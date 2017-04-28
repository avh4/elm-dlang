{ mkDerivation, base, HUnit, stdenv, template-haskell }:
mkDerivation {
  pname = "raw-strings-qq";
  version = "1.1";
  sha256 = "1lxy1wy3awf52968iy5y9r5z4qgnn2sxkdrh7js3m9gadb11w09f";
  libraryHaskellDepends = [ base template-haskell ];
  testHaskellDepends = [ base HUnit ];
  homepage = "https://github.com/23Skidoo/raw-strings-qq";
  description = "Raw string literals for Haskell";
  license = stdenv.lib.licenses.bsd3;
}
