{ mkDerivation, base, Cabal, deepseq, QuickCheck, stdenv }:
mkDerivation {
  pname = "dlist";
  version = "0.8.0.2";
  sha256 = "1ca1hvl5kd4api4gjyhwwavdx8snq6gf1jr6ab0zmjx7p77pwfbp";
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [ base Cabal QuickCheck ];
  homepage = "https://github.com/spl/dlist";
  description = "Difference lists";
  license = stdenv.lib.licenses.bsd3;
}
