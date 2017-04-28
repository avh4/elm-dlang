{ mkDerivation, array, base, binary, bytestring, QuickCheck, stdenv
, test-framework, test-framework-quickcheck2
}:
mkDerivation {
  pname = "SHA";
  version = "1.6.4.2";
  sha256 = "134ajm87fm4lpsw86m9q8apv20dw4bpk46raa389zr6bcdpifw64";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ array base binary bytestring ];
  testHaskellDepends = [
    array base binary bytestring QuickCheck test-framework
    test-framework-quickcheck2
  ];
  description = "Implementations of the SHA suite of message digest functions";
  license = stdenv.lib.licenses.bsd3;
}
