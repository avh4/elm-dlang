{ mkDerivation, base, blaze-builder, bytestring, data-default-class
, deepseq, HUnit, old-locale, QuickCheck, stdenv, tasty
, tasty-hunit, tasty-quickcheck, text, time
}:
mkDerivation {
  pname = "cookie";
  version = "0.4.2.1";
  sha256 = "1r2j518lfcswn76qm6p2h1rl98gfsxad7p7z9qaww84fj28k0h86";
  libraryHaskellDepends = [
    base blaze-builder bytestring data-default-class deepseq old-locale
    text time
  ];
  testHaskellDepends = [
    base blaze-builder bytestring HUnit QuickCheck tasty tasty-hunit
    tasty-quickcheck text time
  ];
  homepage = "http://github.com/snoyberg/cookie";
  description = "HTTP cookie parsing and rendering";
  license = stdenv.lib.licenses.mit;
}
