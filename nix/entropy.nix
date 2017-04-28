{ mkDerivation, base, bytestring, stdenv, unix }:
mkDerivation {
  pname = "entropy";
  version = "0.3.7";
  sha256 = "1vzg9fi597dbrcbjsr71y47rvmhiih7lg5rjnb297fzdlbmj1w0z";
  libraryHaskellDepends = [ base bytestring unix ];
  homepage = "https://github.com/TomMD/entropy";
  description = "A platform independent entropy source";
  license = stdenv.lib.licenses.bsd3;
}
