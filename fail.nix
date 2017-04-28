{ mkDerivation, stdenv }:
mkDerivation {
  pname = "fail";
  version = "4.9.0.0";
  sha256 = "18nlj6xvnggy61gwbyrpmvbdkq928wv0wx2zcsljb52kbhddnp3d";
  homepage = "https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail";
  description = "Forward-compatible MonadFail class";
  license = stdenv.lib.licenses.bsd3;
}
