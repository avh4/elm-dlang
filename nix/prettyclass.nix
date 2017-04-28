{ mkDerivation, base, pretty, stdenv }:
mkDerivation {
  pname = "prettyclass";
  version = "1.0.0.0";
  sha256 = "11l9ajci7nh1r547hx8hgxrhq8mh5gdq30pdf845wvilg9p48dz5";
  libraryHaskellDepends = [ base pretty ];
  description = "Pretty printing class similar to Show";
  license = stdenv.lib.licenses.bsd3;
}
