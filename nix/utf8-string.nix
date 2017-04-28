{ mkDerivation, base, bytestring, stdenv }:
mkDerivation {
  pname = "utf8-string";
  version = "1.0.1.1";
  sha256 = "0h7imvxkahiy8pzr8cpsimifdfvv18lizrb33k6mnq70rcx9w2zv";
  revision = "1";
  editedCabalFile = "a351111265dd7d3a76113c938d4d3b0b2ba5b17e071f77e5a29fc86e91ee8396";
  libraryHaskellDepends = [ base bytestring ];
  homepage = "http://github.com/glguy/utf8-string/";
  description = "Support for reading and writing UTF8 Strings";
  license = stdenv.lib.licenses.bsd3;
}
