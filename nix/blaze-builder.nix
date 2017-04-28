{ mkDerivation, base, bytestring, deepseq, HUnit, QuickCheck
, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2, text, utf8-string
}:
mkDerivation {
  pname = "blaze-builder";
  version = "0.4.0.2";
  sha256 = "1m33y6p5xldni8p4fzg8fmsyqvkfmnimdamr1xjnsmgm3dkf9lws";
  libraryHaskellDepends = [ base bytestring deepseq text ];
  testHaskellDepends = [
    base bytestring HUnit QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2 text utf8-string
  ];
  homepage = "http://github.com/lpsmith/blaze-builder";
  description = "Efficient buffered output";
  license = stdenv.lib.licenses.bsd3;
}
