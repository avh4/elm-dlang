{ mkDerivation, array, base, containers, criterion, deepseq
, process, QuickCheck, random, stdenv, test-framework
, test-framework-quickcheck2, time, unix
}:
mkDerivation {
  pname = "edit-distance";
  version = "0.2.2.1";
  sha256 = "0jkca97zyv23yyilp3jydcrzxqhyk27swhzh82llvban5zp8b21y";
  revision = "1";
  editedCabalFile = "4d33a49cd383d50af090f1b888642d10116e43809f9da6023d9fc6f67d2656ee";
  libraryHaskellDepends = [ array base containers random ];
  testHaskellDepends = [
    array base containers QuickCheck random test-framework
    test-framework-quickcheck2
  ];
  benchmarkHaskellDepends = [
    array base containers criterion deepseq process random time unix
  ];
  homepage = "http://github.com/phadej/edit-distance";
  description = "Levenshtein and restricted Damerau-Levenshtein edit distances";
  license = stdenv.lib.licenses.bsd3;
}
