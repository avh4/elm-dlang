{-# LANGUAGE OverloadedStrings #-}

module ComparisonTests (comparisonTests) where

import Data.Aeson
import Data.Aeson.Types
import Data.Map (Map)
import Data.Text (Text)
import Control.Monad.Error (runErrorT)
import Test.HUnit ((@?), (@?=), Assertion)
import qualified Data.Map as Map
import qualified Test.Framework as TF
import qualified Test.Framework.Providers.HUnit as TH

import qualified Utils.SemverCheck as SC

-- SETUP

type_const1 = function [var "a", var "b"] (var "a")
type_const2 = function [var "b", var "a"] (var "b")

const_renaming = Map.fromList [("a", "b"), ("b", "a")]

type_int = adt "Int" []
type_string = adt "String" []

type_list ty_elem = adt "List" [ty_elem]

type_map1 = function [fun1 (var "a") (var "b"), type_list (var "a")] (type_list (var "b"))
type_map2 = function [fun1 (var "b") (var "c"), type_list (var "b")] (type_list (var "c"))
type_map_wrong = function [fun1 (var "b") (var "c"), type_list (var "c")] (type_list (var "c"))

module_1 =
  modul [ value "map" type_map1
        , value "counter" type_int
        ]

module_2 =
  modul [ value "map" type_map2
        , value "name" type_string
        ]

module_comparison =
  Map.fromList [ ("map", SC.Existing SC.Same)
               , ("counter", SC.Removed)
               , ("name", SC.Added)
               ]

map_renaming = Map.fromList [("a", "b"), ("b", "c")]

yieldsComparison :: Value -> Value -> Map String SC.BindingState -> Assertion
yieldsComparison v1 v2 result =
  case parseEither SC.buildModuleComparison (v1, v2) of
    Left err -> False @? "Parsing JSON values should succeed"
    Right ls -> mapM_ check ls
  where
    check entry =
      case Map.lookup (SC.name entry) result of
        Nothing -> False @? ("Unexpected entry " ++ SC.name entry)
        Just value -> value @?= SC.state entry

yieldsRenaming :: Value -> Value -> Map String String -> Assertion
yieldsRenaming v1 v2 renaming =
  case parseEither (runErrorT . SC.buildRenaming Map.empty) (v1, v2) of
    Left err -> False @? "Parsing JSON values should succeed"
    Right (Left _) -> False @? "Non-compatibility shouldn't occur"
    Right (Right result) -> result @?= renaming

nonCompatible :: Value -> Value -> Assertion
nonCompatible v1 v2 =
  case parseEither (runErrorT . SC.buildRenaming Map.empty) (v1, v2) of
    Left err -> False @? "Parsing JSON values should succeed"
    Right (Left _) -> return ()
    Right (Right _) -> False @? "Types shouldn't be compatible"


-- SETUP HELPERS

var :: Text -> Value
var varName =
  object [ "tag" .= ("var" :: Text)
         , "name" .= varName
         ]

function :: [Value] -> Value -> Value
function args result =
  object [ "tag" .= ("function" :: Text)
         , "args" .= args
         , "result" .= result
         ]

fun1 :: Value -> Value -> Value
fun1 arg result = function [arg] result

adt :: Text -> [Value] -> Value
adt name args =
  object [ "tag" .= ("adt" :: Text)
         , "name" .= name
         , "args" .= args
         ]

value :: Text -> Value -> Value
value name typ =
  object [ "name" .= name
         , "raw" .= ("" :: Text)
         , "type" .= typ
         ]

modul :: [Value] -> Value
modul values =
  object [ "values" .= values
         ]


comparisonTests =
  TF.testGroup "Types comparison tests"
  [ TH.testCase "a -> b -> a == b -> a -> b"
    (yieldsRenaming type_const1 type_const2 const_renaming)
  , TH.testCase "Int /= String"
    (nonCompatible type_int type_string)
  , TH.testCase "String /= Int"
    (nonCompatible type_string type_int)
  , TH.testCase "Renaming typevars in (a -> b) -> [a] -> [b]"
    (yieldsRenaming type_map1 type_map2 map_renaming)
  , TH.testCase "Map type /= wrong map type"
    (nonCompatible type_map1 type_map_wrong)
  , TH.testCase "Comparing two different modules"
    (yieldsComparison module_2 module_1 module_comparison)
  ]
