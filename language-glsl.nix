{ mkDerivation, base, HUnit, parsec, prettyclass, stdenv
, test-framework, test-framework-hunit
}:
mkDerivation {
  pname = "language-glsl";
  version = "0.2.0";
  sha256 = "1wmfzif1cc3a8sls3swms9x54hm9ic8y301zav6fg4mr7xa4hqr3";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base parsec prettyclass ];
  executableHaskellDepends = [ base parsec prettyclass ];
  testHaskellDepends = [
    base HUnit parsec prettyclass test-framework test-framework-hunit
  ];
  description = "GLSL abstract syntax tree, parser, and pretty-printer";
  license = stdenv.lib.licenses.bsd3;
}
