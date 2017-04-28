{ mkDerivation, base, base64-bytestring, bytestring, HUnit, mtl
, QuickCheck, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "pem";
  version = "0.2.2";
  sha256 = "162sk5sg22w21wqz5qv8kx6ibxp99v5p20g3nknhm1kddk3hha1p";
  libraryHaskellDepends = [ base base64-bytestring bytestring mtl ];
  testHaskellDepends = [
    base bytestring HUnit QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2
  ];
  homepage = "http://github.com/vincenthz/hs-pem";
  description = "Privacy Enhanced Mail (PEM) format reader and writer";
  license = stdenv.lib.licenses.bsd3;
}
