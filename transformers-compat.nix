{ mkDerivation, base, stdenv, transformers }:
mkDerivation {
  pname = "transformers-compat";
  version = "0.4.0.4";
  sha256 = "0lmg8ry6bgigb0v2lg0n74lxi8z5m85qq0qi4h1k9llyjb4in8ym";
  libraryHaskellDepends = [ base transformers ];
  homepage = "http://github.com/ekmett/transformers-compat/";
  description = "A small compatibility shim exposing the new types from transformers 0.3 and 0.4 to older Haskell platforms.";
  license = stdenv.lib.licenses.bsd3;
}
