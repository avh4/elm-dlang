{ mkDerivation, base, bytestring, deepseq, ghc-prim, integer-gmp
, memory, stdenv, tasty, tasty-hunit, tasty-kat, tasty-quickcheck
}:
mkDerivation {
  pname = "cryptonite";
  version = "0.22";
  sha256 = "1w7mdzxwam3alfdr18czv1z2q92gcs2z8bi7c35d5k0j5aj15qsb";
  libraryHaskellDepends = [
    base bytestring deepseq ghc-prim integer-gmp memory
  ];
  testHaskellDepends = [
    base bytestring memory tasty tasty-hunit tasty-kat tasty-quickcheck
  ];
  homepage = "https://github.com/haskell-crypto/cryptonite";
  description = "Cryptography Primitives sink";
  license = stdenv.lib.licenses.bsd3;
}
