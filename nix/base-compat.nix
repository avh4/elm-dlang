{ mkDerivation, base, hspec, QuickCheck, stdenv, unix }:
mkDerivation {
  pname = "base-compat";
  version = "0.9.3";
  sha256 = "0452l6zf6fjhy4kxqwv6i6hhg6yfx4wcg450k3axpyj30l7jnq3x";
  libraryHaskellDepends = [ base unix ];
  testHaskellDepends = [ base hspec QuickCheck ];
  description = "A compatibility layer for base";
  license = stdenv.lib.licenses.mit;
}
