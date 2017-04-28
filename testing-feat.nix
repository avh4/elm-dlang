{ mkDerivation, base, mtl, QuickCheck, stdenv, tagshare
, template-haskell
}:
mkDerivation {
  pname = "testing-feat";
  version = "0.4.0.3";
  sha256 = "1kh7ak9qlxsr34hxccfgyz1ga90xxiaxqndk3jaln1f495w9rjil";
  libraryHaskellDepends = [
    base mtl QuickCheck tagshare template-haskell
  ];
  description = "Functional Enumeration of Algebraic Types";
  license = stdenv.lib.licenses.bsd3;
}
