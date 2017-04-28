{ mkDerivation, base, bytestring, stdenv, text }:
mkDerivation {
  pname = "readable";
  version = "0.3.1";
  sha256 = "1ja39cg26wy2fs00gi12x7iq5k8i366pbqi3p916skfa5jnkfc3h";
  libraryHaskellDepends = [ base bytestring text ];
  homepage = "https://github.com/mightybyte/readable";
  description = "Reading from Text and ByteString";
  license = stdenv.lib.licenses.bsd3;
}
