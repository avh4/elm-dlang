{ mkDerivation, attoparsec, base, base16-bytestring, blaze-builder
, bytestring, bytestring-builder, case-insensitive, clock
, containers, criterion, deepseq, directory, filepath, http-common
, http-streams, HUnit, io-streams, io-streams-haproxy, lifted-base
, monad-control, mtl, network, old-locale, parallel, QuickCheck
, random, snap-core, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2, text, threads, time, transformers
, unix, unix-compat, vector
}:
mkDerivation {
  pname = "snap-server";
  version = "1.0.2.0";
  sha256 = "0jfmbc6dx4jl1jvx89v5ghw3q298wbdkzgmvnn1fxbiiadcjjzv7";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    attoparsec base blaze-builder bytestring bytestring-builder
    case-insensitive clock containers filepath io-streams
    io-streams-haproxy lifted-base mtl network old-locale snap-core
    text time unix unix-compat vector
  ];
  testHaskellDepends = [
    attoparsec base base16-bytestring blaze-builder bytestring
    bytestring-builder case-insensitive clock containers deepseq
    directory filepath http-common http-streams HUnit io-streams
    io-streams-haproxy lifted-base monad-control mtl network old-locale
    parallel QuickCheck random snap-core test-framework
    test-framework-hunit test-framework-quickcheck2 text threads time
    transformers unix unix-compat vector
  ];
  benchmarkHaskellDepends = [
    attoparsec base blaze-builder bytestring bytestring-builder
    criterion io-streams io-streams-haproxy snap-core vector
  ];
  homepage = "http://snapframework.com/";
  description = "A web server for the Snap Framework";
  license = stdenv.lib.licenses.bsd3;
}
