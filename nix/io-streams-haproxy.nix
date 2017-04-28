{ mkDerivation, attoparsec, base, bytestring, HUnit, io-streams
, network, stdenv, test-framework, test-framework-hunit
, transformers
}:
mkDerivation {
  pname = "io-streams-haproxy";
  version = "1.0.0.1";
  sha256 = "0zwjdsg1pcxzd8s0d308q4jhx0pfrk2aq8q039gs8k9y8h9cbh64";
  libraryHaskellDepends = [
    attoparsec base bytestring io-streams network transformers
  ];
  testHaskellDepends = [
    attoparsec base bytestring HUnit io-streams network test-framework
    test-framework-hunit transformers
  ];
  homepage = "http://snapframework.com/";
  description = "HAProxy protocol 1.5 support for io-streams";
  license = stdenv.lib.licenses.bsd3;
}
