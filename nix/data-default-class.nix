{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "data-default-class";
  version = "0.1.2.0";
  sha256 = "0miyjz8d4jyvqf2vp60lyfbnflx6cj2k8apmm9ly1hq0y0iv80ag";
  libraryHaskellDepends = [ base ];
  description = "A class for types with a default value";
  license = stdenv.lib.licenses.bsd3;
}
