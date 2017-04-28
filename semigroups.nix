{ mkDerivation, base, stdenv, hashable, tagged, text, unordered-containers }:
mkDerivation {
  pname = "semigroups";
  version = "0.18.2";
  sha256 = "1r6hsn3am3dpf4rprrj4m04d9318v9iq02bin0pl29dg4a3gzjax";
  libraryHaskellDepends = [ base hashable tagged text unordered-containers ];
  homepage = "http://github.com/ekmett/semigroups/";
  description = "Anything that associates";
  license = stdenv.lib.licenses.bsd3;
}
