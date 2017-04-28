{ mkDerivation, base, binary, bytestring, containers, criterion
, deepseq, hashable, HUnit, QuickCheck, random, stdenv, tasty
, tasty-hunit, tasty-quickcheck, text
}:
mkDerivation {
  pname = "uuid-types";
  version = "1.0.3";
  sha256 = "1zdka5jnm1h6k36w3nr647yf3b5lqb336g3fkprhd6san9x52xlj";
  revision = "1";
  editedCabalFile = "01887ed945e74c3c361b00700bd9aeead37d1124d39c0d4f190f89fb0e909c47";
  libraryHaskellDepends = [
    base binary bytestring deepseq hashable random text
  ];
  testHaskellDepends = [
    base bytestring HUnit QuickCheck tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring containers criterion deepseq random
  ];
  homepage = "https://github.com/aslatter/uuid";
  description = "Type definitions for Universally Unique Identifiers";
  license = stdenv.lib.licenses.bsd3;
}
