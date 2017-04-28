{ mkDerivation, base, stdenv, stm, transformers, transformers-base
, transformers-compat
}:
mkDerivation {
  pname = "monad-control";
  version = "1.0.1.0";
  sha256 = "1x018gi5irznx5rgzmkr2nrgh26r8cvqwkcfc6n6y05pdjf21c6l";
  libraryHaskellDepends = [
    base stm transformers transformers-base transformers-compat
  ];
  homepage = "https://github.com/basvandijk/monad-control";
  description = "Lift control operations, like exception catching, through monad transformers";
  license = stdenv.lib.licenses.bsd3;
}
