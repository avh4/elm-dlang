{ mkDerivation, base, bytestring, stdenv, zlib, systemZlib }:
mkDerivation {
  pname = "digest";
  version = "0.0.1.2";
  sha256 = "04gy2zp8yzvv7j9bdfvmfzcz3sqyqa6rwslqcn4vyair2vmif5v4";
  libraryHaskellDepends = [ base bytestring ];
  librarySystemDepends = [ systemZlib ];
  description = "Various cryptographic hashes for bytestrings; CRC32 and Adler32 for now";
  license = stdenv.lib.licenses.bsd3;
}
