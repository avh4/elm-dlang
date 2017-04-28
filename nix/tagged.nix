{ mkDerivation, base, deepseq, stdenv, template-haskell }:
mkDerivation {
  pname = "tagged";
  version = "0.8.4";
  sha256 = "0pjd4cx4kkcc2vxs8w829lpqdcxhkx9d1n9rp88ahpj4k7963j10";
  libraryHaskellDepends = [ base deepseq template-haskell ];
  homepage = "http://github.com/ekmett/tagged";
  description = "Haskell 98 phantom types to avoid unsafely passing dummy arguments";
  license = stdenv.lib.licenses.bsd3;
}
