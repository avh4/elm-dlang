{ mkDerivation, aeson, ansi-terminal, ansi-wl-pprint, base, binary
, blaze-html, blaze-markup, bytestring, containers, directory
, elm-compiler, elm-package, filepath, mtl, optparse-applicative
, raw-strings-qq, stdenv, text, time
}:
mkDerivation {
  pname = "elm-make";
  version = "0.18";
  src = ./elm-make;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson ansi-terminal ansi-wl-pprint base binary blaze-html
    blaze-markup bytestring containers directory elm-compiler
    elm-package filepath mtl optparse-applicative raw-strings-qq text
    time
  ];
  homepage = "http://elm-lang.org";
  description = "A build tool for Elm projects";
  license = stdenv.lib.licenses.bsd3;
}
