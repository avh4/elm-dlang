{ mkDerivation, base, bytestring, deepseq, stdenv }:
mkDerivation {
  pname = "bytestring-builder";
  version = "0.10.8.1.0";
  sha256 = "1hnvjac28y44yn78c9vdp1zvrknvlw98ky3g4n5vivr16rvh8x3d";
  libraryHaskellDepends = [ base bytestring deepseq ];
  description = "The new bytestring builder, packaged outside of GHC";
  license = stdenv.lib.licenses.bsd3;
}
