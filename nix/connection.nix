{ mkDerivation, base, byteable, bytestring, containers
, data-default-class, network, socks, stdenv, tls, x509, x509-store
, x509-system, x509-validation
}:
mkDerivation {
  pname = "connection";
  version = "0.2.8";
  sha256 = "1swkb9w5vx9ph7x55y51dc0srj2z27nd9ibgn8c0qcl6hx7g9cbh";
  libraryHaskellDepends = [
    base byteable bytestring containers data-default-class network
    socks tls x509 x509-store x509-system x509-validation
  ];
  homepage = "http://github.com/vincenthz/hs-connection";
  description = "Simple and easy network connections API";
  license = stdenv.lib.licenses.bsd3;
}
