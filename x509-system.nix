{ mkDerivation, base, bytestring, containers, directory, filepath
, mtl, pem, process, stdenv, x509, x509-store
}:
mkDerivation {
  pname = "x509-system";
  version = "1.6.4";
  sha256 = "0k7zc0xp7r6kqmi39rpiicvq78xb0pr2cq6q5s3kmmsshllg13nr";
  libraryHaskellDepends = [
    base bytestring containers directory filepath mtl pem process x509
    x509-store
  ];
  homepage = "http://github.com/vincenthz/hs-certificate";
  description = "Handle per-operating-system X.509 accessors and storage";
  license = stdenv.lib.licenses.bsd3;
}
