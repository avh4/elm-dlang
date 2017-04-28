{ mkDerivation, asn1-encoding, asn1-parse, asn1-types, base
, bytestring, containers, cryptonite, hourglass, memory, mtl, pem
, stdenv, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "x509";
  version = "1.6.5";
  sha256 = "10s77746vq3w06q66dy0pcis4dbvwf2wix59yaajgar39qhr8f5m";
  libraryHaskellDepends = [
    asn1-encoding asn1-parse asn1-types base bytestring containers
    cryptonite hourglass memory mtl pem
  ];
  testHaskellDepends = [
    asn1-types base bytestring cryptonite hourglass mtl tasty
    tasty-quickcheck
  ];
  homepage = "http://github.com/vincenthz/hs-certificate";
  description = "X509 reader and writer";
  license = stdenv.lib.licenses.bsd3;
}
