{ mkDerivation, base, stdenv, unix }:
mkDerivation {
  pname = "unix-compat";
  version = "0.4.3.1";
  sha256 = "09vykw89x981fywy0w1pci2v8zy3ajyjwh9z2n610vjacmd1v03j";
  revision = "1";
  editedCabalFile = "6c1914a5322b96837ac47296bf0ce287ce9c89cc131f844483f5d9784e36910a";
  libraryHaskellDepends = [ base unix ];
  homepage = "http://github.com/jystic/unix-compat";
  description = "Portable POSIX-compatibility layer";
  license = stdenv.lib.licenses.bsd3;
}
