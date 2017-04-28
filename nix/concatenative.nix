{ mkDerivation, base, stdenv, template-haskell }:
mkDerivation {
  pname = "concatenative";
  version = "1.0.1";
  sha256 = "05xwqvcdnk8bsyj698ab9jxpa1nk23pf3m7wi9mwmw0q8n99fngd";
  libraryHaskellDepends = [ base template-haskell ];
  homepage = "https://patch-tag.com/r/salazar/concatenative/snapshot/current/content/pretty";
  description = "A library for postfix control flow";
  license = stdenv.lib.licenses.bsd3;
}
