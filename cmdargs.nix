{ mkDerivation, base, filepath, process, stdenv, template-haskell
, transformers
}:
mkDerivation {
  pname = "cmdargs";
  version = "0.10.17";
  sha256 = "1nklhglfa83s9rd8x4j40bvnzdvd81pwdq902sv51mnfyk5a8drl";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base filepath process template-haskell transformers
  ];
  homepage = "https://github.com/ndmitchell/cmdargs#readme";
  description = "Command line argument processing";
  license = stdenv.lib.licenses.bsd3;
}
