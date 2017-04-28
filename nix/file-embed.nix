{ mkDerivation, base, bytestring, directory, filepath, stdenv
, template-haskell
}:
mkDerivation {
  pname = "file-embed";
  version = "0.0.10";
  sha256 = "04gpylngm2aalqcgdk7gy7jiw291dala1354spxa8wspxif94lgp";
  libraryHaskellDepends = [
    base bytestring directory filepath template-haskell
  ];
  testHaskellDepends = [ base filepath ];
  homepage = "https://github.com/snoyberg/file-embed";
  description = "Use Template Haskell to embed file contents directly";
  license = stdenv.lib.licenses.bsd3;
}
