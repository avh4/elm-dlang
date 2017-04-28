{ mkDerivation, array, base, binary, bytestring, Cabal, containers
, digest, directory, filepath, HUnit, mtl, old-time, pretty
, process, stdenv, temporary, text, time, unix, zip, zlib
}:
mkDerivation {
  pname = "zip-archive";
  version = "0.3.0.5";
  sha256 = "1iwpzjck4jg9bz1yqky051i2wljsqc14q5zbi10dydfp8ip3d0yw";
  revision = "1";
  editedCabalFile = "f9284c6bdf1e6c9f85091c602faae19dfad856ac6628531d999a611994f3da86";
  isLibrary = true;
  isExecutable = true;
  setupHaskellDepends = [ base Cabal ];
  libraryHaskellDepends = [
    array base binary bytestring containers digest directory filepath
    mtl old-time pretty text time unix zlib
  ];
  testHaskellDepends = [
    base bytestring directory HUnit old-time process temporary time
    unix
  ];
  testToolDepends = [ zip ];
  homepage = "http://github.com/jgm/zip-archive";
  description = "Library for creating and modifying zip archives";
  license = stdenv.lib.licenses.bsd3;
}
