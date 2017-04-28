{ mkDerivation, base, binary, bytestring, stdenv }:
mkDerivation {
  pname = "bytestring-trie";
  version = "0.2.4.1";
  sha256 = "0qqklrvdcprchnl4bxr6w7zf6k5gncincl3kysm34gd04sszxr1g";
  libraryHaskellDepends = [ base binary bytestring ];
  homepage = "http://code.haskell.org/~wren/";
  description = "An efficient finite map from (byte)strings to values";
  license = stdenv.lib.licenses.bsd3;
}
