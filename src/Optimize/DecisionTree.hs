{-# OPTIONS_GHC -Wall #-}
module Optimize.DecisionTree where
{- To learn more about how this works, definitely read through:

    "When Do Match-Compilation Heuristics Matter?"

by Kevin Scott and Norman Ramsey. The rough idea is that we start with a simple
list of patterns and expressions, and then turn that into a "decision tree"
that requires as few tests as possible to make it to a leaf. Read the paper, it
explains this extraordinarily well! We are currently using the same heuristics
as SML/NJ to get nice trees.
-}

import Control.Arrow (second)
import qualified Data.List as List
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Maybe as Maybe

import qualified AST.Helpers as Help
import qualified AST.Literal as L
import qualified AST.Pattern as P
import qualified AST.Variable as Var
import qualified Reporting.Annotation as A


type CPattern = P.Canonical


-- COMPILE CASES

{-| Users of this module will mainly interact with this function. It takes
some normal branches and gives out a decision tree that has "labels" at all
the leafs and a dictionary that maps these "labels" to the code that should
run.

If 2 or more leaves point to the same label, we need to do some tricks in JS to
make that work nicely. When is JS getting goto?! ;) That is outside the scope
of this module though.
-}
compile :: VariantDict -> [(CPattern, Int)] -> DecisionTree
compile variantDict rawBranches =
  let
    format (pattern, index) =
        Branch index [(Empty, pattern)]
  in
    toDecisionTree variantDict (map format rawBranches)


{-| When a certain union type is defined, you specify a certain number of tags.
This helps us do a few optimizations:

  * If there is only one possible tag, we can always skip checking what it is.
    Tuples are a common example of this.
  * If we use all possible tags, we can skip doing the last test. If we have
    checked N-1 of N tags, there is no need to test the Nth, we know its the
    one we want

So this dictionary maps tags to the number of variants that exist, so it'll
contain things like [ ("Just", 2), ("Nothing", 2), ("_Tuple2", 1), ... ] which
we can use for these optimizations.
-}
type VariantDict =
    Map.Map Var.Home (Map.Map String Int)


-- DECISION TREES

data DecisionTree
    = Match Int
    | Decision
        { _test :: Path
        , _edges :: [(Test, DecisionTree)]
        , _default :: Maybe DecisionTree
        }
    deriving (Eq)


data Test
    = Constructor Var.Canonical
    | Literal L.Literal
    deriving (Eq, Ord)


data Path
    = Position Int Path
    | Field String Path
    | Empty
    | Alias
    deriving (Eq)


-- PATH HELPERS

add :: Path -> Path -> Path
add path finalLink =
  case path of
    Empty ->
        finalLink

    Alias ->
        error "nothing should be added to an alias path"

    Position index subpath ->
        Position index (add subpath finalLink)

    Field name subpath ->
        Field name (add subpath finalLink)


subPositions :: Path -> [CPattern] -> [(Path, CPattern)]
subPositions path patterns =
    zipWith
      (\index pattern -> (add path (Position index Empty), pattern))
      [0..]
      patterns


-- ACTUALLY BUILD DECISION TREES

data Branch =
  Branch
    { _goal :: Int
    , _patterns :: [(Path, CPattern)]
    }


toDecisionTree :: VariantDict -> [Branch] -> DecisionTree
toDecisionTree variantDict rawBranches =
  let
    branches =
        map (flattenPatterns variantDict) rawBranches
  in
  case checkForMatch branches of
    Just goal ->
        Match goal

    Nothing ->
        let
          path =
              pickPath variantDict branches

          (edges, fallback) =
              gatherEdges variantDict branches path

          decisionEdges =
              map (second (toDecisionTree variantDict)) edges
        in
          case (decisionEdges, fallback) of
            ([(_tag, decisionTree)], []) ->
                decisionTree

            (_, []) ->
                Decision path decisionEdges Nothing

            ([], _ : _) ->
                toDecisionTree variantDict fallback

            (_, _) ->
                Decision path decisionEdges (Just (toDecisionTree variantDict fallback))


isComplete :: VariantDict -> [Test] -> Bool
isComplete variantDict tests =
  case head tests of
    Constructor var ->
        getArity variantDict var == length tests

    Literal (L.Boolean _) ->
        length tests == 2

    _ ->
        False


getArity :: VariantDict -> Var.Canonical -> Int
getArity variantDict (Var.Canonical home name) =
  case Map.lookup name =<< Map.lookup home variantDict of
    Just arity ->
        arity

    Nothing ->
        if Help.isTuple name then
          read (drop 6 name)

        else
          error
            "Since the Optimize phase happens after canonicalization and type \
            \inference, it is impossible that a pattern cannot be found."


-- FLATTEN PATTERNS

{-| Flatten type aliases and use the VariantDict to figure out when a tag is
the only variant so we can skip doing any tests on it.
-}
flattenPatterns :: VariantDict -> Branch -> Branch
flattenPatterns variantDict (Branch goal pathPatterns) =
  Branch goal (concatMap (flatten variantDict) pathPatterns)


flatten :: VariantDict -> (Path, CPattern) -> [(Path, CPattern)]
flatten variantDict pathPattern@(path, A.A ann pattern) =
  case pattern of
    P.Var _ ->
        [pathPattern]

    P.Anything ->
        [pathPattern]

    P.Alias alias realPattern ->
        (add path Alias, A.A ann (P.Var alias))
        :
        flatten variantDict (path, realPattern)

    P.Record _ ->
        [pathPattern]

    P.Data tag patterns ->
        if getArity variantDict tag == 1 then
            concatMap (flatten variantDict) (subPositions path patterns)

        else
            [pathPattern]

    P.Literal _ ->
        [pathPattern]


-- SUCCESSFULLY MATCH

{-| If the first branch has no more "decision points" we can finally take that
path. If that is the case we give the resulting label and a mapping from free
variables to "how to get their value". So a pattern like (Just (x,_)) will give
us something like ("x" => value.0.0)
-}
checkForMatch :: [Branch] -> Maybe Int
checkForMatch branches =
  case branches of
    Branch goal patterns : _ | all (not . needsTests . snd) patterns ->
        Just goal

    _ ->
        Nothing


-- GATHER OUTGOING EDGES

gatherEdges :: VariantDict -> [Branch] -> Path -> ([(Test, [Branch])], [Branch])
gatherEdges variantDict branches path =
  let
    relevantTests =
        testsAtPath path branches

    allEdges =
        map (edgesFor path branches) relevantTests

    fallbacks =
        if isComplete variantDict relevantTests then
          []
        else
          filter (isIrrelevantTo path) branches
  in
    ( allEdges, fallbacks )


-- FIND RELEVANT TESTS

testsAtPath :: Path -> [Branch] -> [Test]
testsAtPath selectedPath branches =
  let
    allTests =
      Maybe.mapMaybe (testAtPath selectedPath) branches

    skipVisited test curr@(uniqueTests, visitedTests) =
        if Set.member test visitedTests then
            curr
        else
            ( test : uniqueTests
            , Set.insert test visitedTests
            )
  in
    fst (foldr skipVisited ([], Set.empty) allTests)


testAtPath :: Path -> Branch -> Maybe Test
testAtPath selectedPath (Branch _ pathPatterns) =
  case List.lookup selectedPath pathPatterns of
    Nothing ->
        Nothing

    Just (A.A _ pattern) ->
        case pattern of
          P.Data name _ ->
              Just (Constructor name)

          P.Literal lit ->
              Just (Literal lit)

          P.Var _ ->
              Nothing

          P.Alias _ _ ->
              error "aliases should never reach 'testAtPath' function"

          P.Anything ->
              Nothing

          P.Record _ ->
              Nothing


-- BUILD EDGES

edgesFor :: Path -> [Branch] -> Test -> (Test, [Branch])
edgesFor path branches test =
  ( test
  , Maybe.mapMaybe (toRelevantBranch test path) branches
  )


toRelevantBranch :: Test -> Path -> Branch -> Maybe Branch
toRelevantBranch test path branch@(Branch goal pathPatterns) =
  case extract path pathPatterns of
    Just (start, A.A _ pattern, end) ->
        case pattern of
          P.Data name patterns ->
              if test == Constructor name then
                  Just (Branch goal (start ++ subPositions path patterns ++ end))

              else
                  Nothing

          P.Literal lit ->
              if test == Literal lit then
                  Just (Branch goal (start ++ end))

              else
                  Nothing

          _ ->
              Just branch

    _ ->
        Just branch


extract
    :: Path
    -> [(Path, CPattern)]
    -> Maybe ([(Path, CPattern)], CPattern, [(Path, CPattern)])
extract selectedPath pathPatterns =
  case pathPatterns of
    [] ->
        Nothing

    first@(path, pattern) : rest ->
        if path == selectedPath then
            Just ([], pattern, rest)

        else
            case extract selectedPath rest of
              Nothing ->
                  Nothing

              Just (start, foundPattern, end) ->
                  Just (first : start, foundPattern, end)


-- FIND IRRELEVANT BRANCHES

isIrrelevantTo :: Path -> Branch -> Bool
isIrrelevantTo selectedPath (Branch _ pathPatterns) =
  case List.lookup selectedPath pathPatterns of
    Nothing ->
        True

    Just pattern ->
        not (needsTests pattern)


needsTests :: CPattern -> Bool
needsTests (A.A _ pattern) =
  case pattern of
    P.Var _ ->
        False

    P.Anything ->
        False

    P.Alias _ _ ->
        error "aliases should never reach 'isIrrelevantTo' function"

    P.Record _ ->
        False

    P.Data _ _ ->
        True

    P.Literal _ ->
        True


-- PICK A PATH

pickPath :: VariantDict -> [Branch] -> Path
pickPath variantDict branches =
  let
    allPaths =
      Maybe.mapMaybe isChoicePath (concatMap _patterns branches)
  in
    case bests (addWeights (smallDefaults branches) allPaths) of
      [path] ->
          path

      tiedPaths ->
          head (bests (addWeights (smallBranchingFactor variantDict branches) tiedPaths))


isChoicePath :: (Path, CPattern) -> Maybe Path
isChoicePath (path, pattern) =
  if needsTests pattern then
      Just path
  else
      Nothing


addWeights :: (Path -> Int) -> [Path] -> [(Path, Int)]
addWeights toWeight paths =
  map (\path -> (path, toWeight path)) paths


bests :: [(Path, Int)] -> [Path]
bests allPaths =
  case allPaths of
    [] ->
      error "Cannot choose the best of zero paths. This should never happen."

    (headPath, headWeight) : weightedPaths ->
      let
        gatherMinimum acc@(minWeight, paths) (path, weight) =
          if weight == minWeight then
            (minWeight, path : paths)

          else if weight < minWeight then
            (weight, [path])

          else
            acc
      in
        snd (List.foldl' gatherMinimum (headWeight, [headPath]) weightedPaths)


-- PATH PICKING HEURISTICS

smallDefaults :: [Branch] -> Path -> Int
smallDefaults branches path =
  length (filter (isIrrelevantTo path) branches)


smallBranchingFactor :: VariantDict -> [Branch] -> Path -> Int
smallBranchingFactor variantDict branches path =
  let
    (edges, fallback) =
      gatherEdges variantDict branches path
  in
    length edges + (if null fallback then 0 else 1)
