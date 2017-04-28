{ mkDerivation, attoparsec, base, bytestring, bytestring-builder
, deepseq, directory, filepath, HUnit, mtl, network, primitive
, process, QuickCheck, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2, text, time, transformers, vector
, zlib, zlib-bindings
}:
mkDerivation {
  pname = "io-streams";
  version = "1.3.6.1";
  sha256 = "0a1nr29qg5z0fqjnivzzy69bfxv7r9aw9yf2i53alcmiqjmx9p18";
  libraryHaskellDepends = [
    attoparsec base bytestring bytestring-builder network primitive
    process text time transformers vector zlib-bindings
  ];
  testHaskellDepends = [
    attoparsec base bytestring bytestring-builder deepseq directory
    filepath HUnit mtl network primitive process QuickCheck
    test-framework test-framework-hunit test-framework-quickcheck2 text
    time transformers vector zlib zlib-bindings
  ];
  description = "Simple, composable, and easy-to-use stream I/O";
  license = stdenv.lib.licenses.bsd3;
}
