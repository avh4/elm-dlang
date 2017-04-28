{ mkDerivation, base, bytestring, stdenv }:
mkDerivation {
  pname = "byteable";
  version = "0.1.1";
  sha256 = "1qizg0kxxjqnd3cbrjhhidk5pbbciz0pb3z5kzikjjxnnnhk8fr4";
  libraryHaskellDepends = [ base bytestring ];
  homepage = "http://github.com/vincenthz/hs-byteable";
  description = "Type class for sequence of bytes";
  license = stdenv.lib.licenses.bsd3;
}
