{ mkDerivation, base, blaze-builder, bytestring, containers, HUnit
, QuickCheck, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2, text
}:
mkDerivation {
  pname = "blaze-markup";
  version = "0.8.0.0";
  sha256 = "03sl7xs6vk4zxbjszgyjpsppi1cknswg7z7rswz2f0rq62wwpq8r";
  libraryHaskellDepends = [ base blaze-builder bytestring text ];
  testHaskellDepends = [
    base blaze-builder bytestring containers HUnit QuickCheck
    test-framework test-framework-hunit test-framework-quickcheck2 text
  ];
  homepage = "http://jaspervdj.be/blaze";
  description = "A blazingly fast markup combinator library for Haskell";
  license = stdenv.lib.licenses.bsd3;
}
