{ mkDerivation, base, stdenv, stm, transformers
, transformers-compat
}:
mkDerivation {
  pname = "transformers-base";
  version = "0.4.4";
  sha256 = "11r3slgpgpra6zi2kjg3g60gvv17b1fh6qxipcpk8n86qx7lk8va";
  revision = "1";
  editedCabalFile = "fb1a305f29cbf6ac182af7e67efaae9fcb9664d8d9606bb8a7f3414ad4c8d7a4";
  libraryHaskellDepends = [
    base stm transformers transformers-compat
  ];
  homepage = "https://github.com/mvv/transformers-base";
  description = "Lift computations from the bottom of a transformer stack";
  license = stdenv.lib.licenses.bsd3;
}
