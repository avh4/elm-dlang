{ mkDerivation, attoparsec, base, bytestring, bytestring-builder
, case-insensitive, containers, deepseq, directory, filepath
, hashable, HUnit, io-streams, lifted-base, monad-control, mtl
, network, network-uri, old-locale, parallel, QuickCheck, random
, readable, regex-posix, stdenv, test-framework
, test-framework-hunit, test-framework-quickcheck2, text, time
, transformers, transformers-base, unix-compat
, unordered-containers, vector, zlib
}:
mkDerivation {
  pname = "snap-core";
  version = "1.0.2.0";
  sha256 = "0p5nwm8b85h1b4q8lr955vhyw7l8xcfpkqbdkicrr6qn4x3vm3p4";
  libraryHaskellDepends = [
    attoparsec base bytestring bytestring-builder case-insensitive
    containers directory filepath hashable HUnit io-streams lifted-base
    monad-control mtl network network-uri old-locale random readable
    regex-posix text time transformers transformers-base unix-compat
    unordered-containers vector
  ];
  testHaskellDepends = [
    attoparsec base bytestring bytestring-builder case-insensitive
    containers deepseq directory filepath hashable HUnit io-streams
    lifted-base monad-control mtl network network-uri old-locale
    parallel QuickCheck random readable regex-posix test-framework
    test-framework-hunit test-framework-quickcheck2 text time
    transformers transformers-base unix-compat unordered-containers
    vector zlib
  ];
  homepage = "http://snapframework.com/";
  description = "Snap: A Haskell Web Framework (core interfaces and types)";
  license = stdenv.lib.licenses.bsd3;
}
