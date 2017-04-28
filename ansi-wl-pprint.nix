{ mkDerivation, ansi-terminal, base, stdenv }:
mkDerivation {
  pname = "ansi-wl-pprint";
  version = "0.6.7.3";
  sha256 = "025pyphsjf0dnbrmj5nscbi6gzyigwgp3ifxb3psn7kji6mfr29p";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ ansi-terminal base ];
  homepage = "http://github.com/ekmett/ansi-wl-pprint";
  description = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
  license = stdenv.lib.licenses.bsd3;
}
