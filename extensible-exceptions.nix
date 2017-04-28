{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "extensible-exceptions";
  version = "0.1.1.4";
  sha256 = "1273nqws9ij1rp1bsq5jc7k2jxpqa0svawdbim05lf302y0firbc";
  libraryHaskellDepends = [ base ];
  description = "Extensible exceptions";
  license = stdenv.lib.licenses.bsd3;
}
