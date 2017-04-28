{ mkDerivation, aeson, attoparsec, base, bytestring, cmdargs
, stdenv, text, unordered-containers, vector
}:
mkDerivation {
  pname = "aeson-pretty";
  version = "0.7.2";
  sha256 = "03ap81853qi8yd9kdgczllrrni23a6glsfxrwj8zab6ipjrbh234";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base bytestring text unordered-containers vector
  ];
  executableHaskellDepends = [
    aeson attoparsec base bytestring cmdargs
  ];
  homepage = "http://github.com/informatikr/aeson-pretty";
  description = "JSON pretty-printing library and command-line tool";
  license = stdenv.lib.licenses.bsd3;
}
