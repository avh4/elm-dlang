{ mkDerivation, base, bytestring, connection, data-default-class
, hspec, http-client, http-types, network, stdenv, tls
}:
mkDerivation {
  pname = "http-client-tls";
  version = "0.2.4.1";
  sha256 = "18wbca7jg15p0ds3339f435nqv2ng0fqc4bylicjzlsww625ij4d";
  revision = "1";
  editedCabalFile = "26f1b0cf1b449df4fce7c4531444ff06ccfacae528d20c5470461ecc4058f56c";
  libraryHaskellDepends = [
    base bytestring connection data-default-class http-client network
    tls
  ];
  testHaskellDepends = [ base hspec http-client http-types ];
  doCheck = false;
  homepage = "https://github.com/snoyberg/http-client";
  description = "http-client backend using the connection package and tls library";
  license = stdenv.lib.licenses.mit;
}
