{ mkDerivation, base, containers, mtl, stdenv }:
mkDerivation {
  pname = "tagshare";
  version = "0.0";
  sha256 = "1q3chp1rmwmxa8rxv7548wsvbqbng6grrnv1587p08385sp4ncfj";
  libraryHaskellDepends = [ base containers mtl ];
  description = "TagShare - explicit sharing with tags";
  license = stdenv.lib.licenses.bsd3;
}
