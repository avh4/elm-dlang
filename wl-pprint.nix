{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "wl-pprint";
  version = "1.2";
  sha256 = "166zvk4zwn2zaa9kx66m1av38m34qp6h4i65bri2sfnxgvx0700r";
  libraryHaskellDepends = [ base ];
  description = "The Wadler/Leijen Pretty Printer";
  license = stdenv.lib.licenses.bsd3;
}
