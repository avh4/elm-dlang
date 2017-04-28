{ mkDerivation, base, bytestring, hourglass, memory, stdenv }:
mkDerivation {
  pname = "asn1-types";
  version = "0.3.2";
  sha256 = "05vjchyqiy9n275cygffhn0ma7fz7jx52j0dcdm9qm8h9bziymqc";
  libraryHaskellDepends = [ base bytestring hourglass memory ];
  homepage = "http://github.com/vincenthz/hs-asn1-types";
  description = "ASN.1 types";
  license = stdenv.lib.licenses.bsd3;
}
