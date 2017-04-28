{ mkDerivation, base, criterion, ghc-prim, mtl, QuickCheck, stdenv
, tasty, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "foundation";
  version = "0.0.6";
  sha256 = "08h27icmyh8784hkfjfy1gc11qa3dm2245d1s49psvhl4fc2w2lz";
  libraryHaskellDepends = [ base ghc-prim ];
  testHaskellDepends = [
    base mtl QuickCheck tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/haskell-foundation/foundation";
  description = "Alternative prelude with batteries and no dependencies";
  license = stdenv.lib.licenses.bsd3;
}
