{ mkDerivation, base, bytestring, hspec, QuickCheck, stdenv, zlib
}:
mkDerivation {
  pname = "zlib-bindings";
  version = "0.1.1.5";
  sha256 = "02ciywlz4wdlymgc3jsnicz9kzvymjw1www2163gxidnz4wb8fy8";
  revision = "2";
  editedCabalFile = "0c6f9f81832af2473281fd58631aff8c6bbad24191e00d2a5a6ae2479249043b";
  libraryHaskellDepends = [ base bytestring zlib ];
  testHaskellDepends = [ base bytestring hspec QuickCheck zlib ];
  homepage = "http://github.com/snapframework/zlib-bindings";
  description = "Low-level bindings to the zlib package";
  license = stdenv.lib.licenses.bsd3;
}
