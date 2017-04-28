{ mkDerivation, base, bytestring, deepseq, foundation, ghc-prim
, stdenv, tasty, tasty-hunit, tasty-quickcheck
}:
mkDerivation {
  pname = "memory";
  version = "0.14.3";
  sha256 = "0ydq9vgz0gms40qpnn5vwx48dwnsp0x69sgc1l0943hh7ilz4ag7";
  libraryHaskellDepends = [
    base bytestring deepseq foundation ghc-prim
  ];
  testHaskellDepends = [ base tasty tasty-hunit tasty-quickcheck ];
  homepage = "https://github.com/vincenthz/hs-memory";
  description = "memory and related abstraction stuff";
  license = stdenv.lib.licenses.bsd3;
}
