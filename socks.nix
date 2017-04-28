{ mkDerivation, base, bytestring, cereal, network, stdenv }:
mkDerivation {
  pname = "socks";
  version = "0.5.5";
  sha256 = "0s689w1hh9g8ifl75xhzbv96ir07hwn04b4lgvbxzl8swa9ylir6";
  revision = "1";
  editedCabalFile = "7cd766c60366c9b1e6100af4f710fd38bc851ac28387b60471c6a3b63bc0e85b";
  libraryHaskellDepends = [ base bytestring cereal network ];
  homepage = "http://github.com/vincenthz/hs-socks";
  description = "Socks proxy (version 5) implementation";
  license = stdenv.lib.licenses.bsd3;
}
