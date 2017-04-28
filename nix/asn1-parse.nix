{ mkDerivation, asn1-encoding, asn1-types, base, bytestring, stdenv
}:
mkDerivation {
  pname = "asn1-parse";
  version = "0.9.4";
  sha256 = "025prsihk5g6rdv9xlfmj0zpa0wa3qjzj5i4ilzvg7f6f3sji8y6";
  libraryHaskellDepends = [
    asn1-encoding asn1-types base bytestring
  ];
  homepage = "https://github.com/vincenthz/hs-asn1";
  description = "Simple monadic parser for ASN1 stream types";
  license = stdenv.lib.licenses.bsd3;
}
