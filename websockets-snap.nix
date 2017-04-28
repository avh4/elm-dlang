{ mkDerivation, base, bytestring, bytestring-builder, io-streams
, mtl, snap-core, snap-server, stdenv, websockets
}:
mkDerivation {
  pname = "websockets-snap";
  version = "0.10.2.0";
  sha256 = "18p4vfc09nhc3a6ylm2xq0g6l3ar2k6hscgzfcwcw9y3vg1p6h99";
  libraryHaskellDepends = [
    base bytestring bytestring-builder io-streams mtl snap-core
    snap-server websockets
  ];
  description = "Snap integration for the websockets library";
  license = stdenv.lib.licenses.bsd3;
}
