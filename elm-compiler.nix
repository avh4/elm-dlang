{ mkDerivation, aeson, aeson-pretty, ansi-terminal, ansi-wl-pprint
, base, binary, bytestring, containers, directory, edit-distance
, filemanip, filepath, HUnit, indents, language-ecmascript
, language-glsl, mtl, parsec, pretty, process, QuickCheck, stdenv
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, union-find
}:
mkDerivation {
  pname = "elm-compiler";
  version = "0.18";
  src = ./elm-compiler;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson aeson-pretty ansi-terminal ansi-wl-pprint base binary
    bytestring containers directory edit-distance filepath indents
    language-ecmascript language-glsl mtl parsec pretty process text
    union-find
  ];
  executableHaskellDepends = [
    aeson base binary directory filepath process text
  ];
  testHaskellDepends = [
    aeson aeson-pretty ansi-terminal ansi-wl-pprint base binary
    bytestring containers directory edit-distance filemanip filepath
    HUnit indents language-ecmascript language-glsl mtl parsec pretty
    process QuickCheck test-framework test-framework-hunit
    test-framework-quickcheck2 text union-find
  ];
  homepage = "http://elm-lang.org";
  description = "Values to help with elm-package, elm-make, and elm-lang.org.";
  license = stdenv.lib.licenses.bsd3;
}
