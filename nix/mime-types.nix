{ mkDerivation, base, bytestring, containers, stdenv, text }:
mkDerivation {
  pname = "mime-types";
  version = "0.1.0.7";
  sha256 = "1fg9cqpp5lswk8ajlq4f41n12c2v2naz179l8dsz6zisjqj4l5l3";
  libraryHaskellDepends = [ base bytestring containers text ];
  homepage = "https://github.com/yesodweb/wai";
  description = "Basic mime-type handling types and functions";
  license = stdenv.lib.licenses.mit;
}
