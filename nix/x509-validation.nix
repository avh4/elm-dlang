{ mkDerivation, asn1-encoding, asn1-types, base, byteable
, bytestring, containers, cryptonite, data-default-class, hourglass
, memory, mtl, pem, stdenv, x509, x509-store
}:
mkDerivation {
  pname = "x509-validation";
  version = "1.6.5";
  sha256 = "190w1sr3w6w49v3yvqz4grb0v09ym4gll3n8bxwijvbvcybk3xyi";
  libraryHaskellDepends = [
    asn1-encoding asn1-types base byteable bytestring containers
    cryptonite data-default-class hourglass memory mtl pem x509
    x509-store
  ];
  homepage = "http://github.com/vincenthz/hs-certificate";
  description = "X.509 Certificate and CRL validation";
  license = stdenv.lib.licenses.bsd3;
}
