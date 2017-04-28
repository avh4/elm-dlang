{ mkDerivation, asn1-types, base, bytestring, hourglass, mtl
, stdenv, tasty, tasty-quickcheck, text
}:
mkDerivation {
  pname = "asn1-encoding";
  version = "0.9.5";
  sha256 = "0adgbamyq0mj1l1hdq4zyyllay714bac1wl0rih3fv1z6vykp1hy";
  libraryHaskellDepends = [ asn1-types base bytestring hourglass ];
  testHaskellDepends = [
    asn1-types base bytestring hourglass mtl tasty tasty-quickcheck
    text
  ];
  homepage = "http://github.com/vincenthz/hs-asn1";
  description = "ASN1 data reader and writer in RAW, BER and DER forms";
  license = stdenv.lib.licenses.bsd3;
}
