{ mkDerivation, base, stdenv, tasty, tasty-quickcheck }:
mkDerivation {
  pname = "clock";
  version = "0.7.2";
  sha256 = "07v91s20halsqjmziqb1sqjp2sjpckl9by7y28aaklwqi2bh2rl8";
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base tasty tasty-quickcheck ];
  homepage = "https://github.com/corsis/clock";
  description = "High-resolution clock functions: monotonic, realtime, cputime";
  license = stdenv.lib.licenses.bsd3;
}
