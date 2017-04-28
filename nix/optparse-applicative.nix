{ mkDerivation, ansi-wl-pprint, base, process, stdenv, transformers
, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.11.0.2";
  sha256 = "0ni52ii9555jngljvzxn1ngicr6i2w647ww3rzhdrmng04y95iii";
  libraryHaskellDepends = [
    ansi-wl-pprint base process transformers transformers-compat
  ];
  homepage = "https://github.com/pcapriotti/optparse-applicative";
  description = "Utilities and combinators for parsing command line options";
  license = stdenv.lib.licenses.bsd3;
}
