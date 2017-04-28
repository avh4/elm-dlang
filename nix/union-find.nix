{ mkDerivation, base, containers, stdenv, transformers }:
mkDerivation {
  pname = "union-find";
  version = "0.2";
  sha256 = "1v7hj42j9w6jlzi56jg8rh4p58gfs1c5dx30wd1qqvn0p0mnihp6";
  revision = "1";
  editedCabalFile = "22e97cd9aeb8c96bf7cd8d359d4eda635dc0e0a6cd91b9a07e5a203b00949c8d";
  libraryHaskellDepends = [ base containers transformers ];
  homepage = "http://github.com/nominolo/union-find";
  description = "Efficient union and equivalence testing of sets";
  license = stdenv.lib.licenses.bsd3;
}
