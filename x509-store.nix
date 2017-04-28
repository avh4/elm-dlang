{ mkDerivation, asn1-encoding, asn1-types, base, bytestring
, containers, cryptonite, directory, filepath, mtl, pem, stdenv
, x509
}:
mkDerivation {
  pname = "x509-store";
  version = "1.6.2";
  sha256 = "0yw09nwkvr324qz4sc27c0p28bz2h6gns6lkaz9mz92mgqf2dza9";
  libraryHaskellDepends = [
    asn1-encoding asn1-types base bytestring containers cryptonite
    directory filepath mtl pem x509
  ];
  homepage = "http://github.com/vincenthz/hs-certificate";
  description = "X.509 collection accessing and storing methods";
  license = stdenv.lib.licenses.bsd3;
}
