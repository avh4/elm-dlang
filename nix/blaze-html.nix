{ mkDerivation, base, blaze-builder, blaze-markup, bytestring
, containers, HUnit, QuickCheck, stdenv, test-framework
, test-framework-hunit, test-framework-quickcheck2, text
}:
mkDerivation {
  pname = "blaze-html";
  version = "0.9.0.1";
  sha256 = "0r0acv47nh75bmf7kjyfvhcwz8f02rn9x0a1l80pzgyczfrsmkmf";
  libraryHaskellDepends = [
    base blaze-builder blaze-markup bytestring text
  ];
  testHaskellDepends = [
    base blaze-builder blaze-markup bytestring containers HUnit
    QuickCheck test-framework test-framework-hunit
    test-framework-quickcheck2 text
  ];
  homepage = "http://jaspervdj.be/blaze";
  description = "A blazingly fast HTML combinator library for Haskell";
  license = stdenv.lib.licenses.bsd3;
}
