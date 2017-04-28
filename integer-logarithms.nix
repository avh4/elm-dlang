{ mkDerivation, array, base, ghc-prim, integer-gmp, QuickCheck
, smallcheck, stdenv, tasty, tasty-hunit, tasty-quickcheck
, tasty-smallcheck
}:
mkDerivation {
  pname = "integer-logarithms";
  version = "1.0.1";
  sha256 = "0k3q79yjwln3fk0m1mwsxc3rypysx6ayl13xqgm254dip273yi8g";
  revision = "1";
  editedCabalFile = "3e6c78b7d38f5767da86e1948a1816e0ede7f123f93a9594e7bb5a8c902369ce";
  libraryHaskellDepends = [ array base ghc-prim integer-gmp ];
  testHaskellDepends = [
    base QuickCheck smallcheck tasty tasty-hunit tasty-quickcheck
    tasty-smallcheck
  ];
  homepage = "https://github.com/phadej/integer-logarithms";
  description = "Integer logarithms";
  license = stdenv.lib.licenses.mit;
}
