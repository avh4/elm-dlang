{ mkDerivation, base, criterion, HUnit, monad-control, monad-peel
, stdenv, test-framework, test-framework-hunit, transformers
, transformers-base, transformers-compat
}:
mkDerivation {
  pname = "lifted-base";
  version = "0.2.3.10";
  sha256 = "1z149mwf839yc0l3islm485n6yfwxbdjfbwd8yi0vi3nn5hfaxz6";
  libraryHaskellDepends = [ base monad-control transformers-base ];
  testHaskellDepends = [
    base HUnit monad-control test-framework test-framework-hunit
    transformers transformers-base transformers-compat
  ];
  benchmarkHaskellDepends = [
    base criterion monad-control monad-peel transformers
  ];
  homepage = "https://github.com/basvandijk/lifted-base";
  description = "lifted IO operations from the base library";
  license = stdenv.lib.licenses.bsd3;
}
