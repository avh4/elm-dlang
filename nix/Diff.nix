{ mkDerivation, array, base, directory, pretty, process, QuickCheck
, stdenv, test-framework, test-framework-quickcheck2
}:
mkDerivation {
  pname = "Diff";
  version = "0.3.4";
  sha256 = "0bqcdvhxx8dmqc3793m6axg813wv9ldz2j37f1wygbbrbbndmdvp";
  libraryHaskellDepends = [ array base pretty ];
  testHaskellDepends = [
    array base directory pretty process QuickCheck test-framework
    test-framework-quickcheck2
  ];
  description = "O(ND) diff algorithm in haskell";
  license = stdenv.lib.licenses.bsd3;
}
