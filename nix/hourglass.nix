{ mkDerivation, base, bytestring, criterion, deepseq, mtl
, old-locale, stdenv, tasty, tasty-hunit, tasty-quickcheck, time
}:
mkDerivation {
  pname = "hourglass";
  version = "0.2.10";
  sha256 = "104d1yd84hclprg740nkz60vx589mnm094zriw6zczbgg8nkclym";
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [
    base deepseq mtl old-locale tasty tasty-hunit tasty-quickcheck time
  ];
  benchmarkHaskellDepends = [
    base bytestring criterion deepseq mtl old-locale time
  ];
  homepage = "https://github.com/vincenthz/hs-hourglass";
  description = "simple performant time related library";
  license = stdenv.lib.licenses.bsd3;
}
