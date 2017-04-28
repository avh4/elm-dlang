{ mkDerivation, array, base, bytestring, containers, ghc-prim
, QuickCheck, stdenv, test-framework, test-framework-quickcheck2, fail
}:
mkDerivation {
  pname = "cereal";
  version = "0.5.4.0";
  sha256 = "1rzyr8r9pjlgas5pc8n776r22i0ficanq05ypqrs477jxxd6rjns";
  libraryHaskellDepends = [
    array base bytestring containers ghc-prim fail
  ];
  testHaskellDepends = [
    base bytestring QuickCheck test-framework
    test-framework-quickcheck2
  ];
  homepage = "https://github.com/GaloisInc/cereal";
  description = "A binary serialization library";
  license = stdenv.lib.licenses.bsd3;
}
