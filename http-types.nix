{ mkDerivation, array, base, blaze-builder, bytestring
, case-insensitive, doctest, hspec, QuickCheck
, quickcheck-instances, stdenv, text
}:
mkDerivation {
  pname = "http-types";
  version = "0.8.6";
  sha256 = "1q1ni88rs8d79xnk1x2jaf3848ygxlfhpvv4gw46k08lw29ihfxh";
  libraryHaskellDepends = [
    array base blaze-builder bytestring case-insensitive text
  ];
  testHaskellDepends = [
    base blaze-builder bytestring doctest hspec QuickCheck
    quickcheck-instances text
  ];
  homepage = "https://github.com/aristidb/http-types";
  description = "Generic HTTP types for Haskell (for both client and server code)";
  license = stdenv.lib.licenses.bsd3;
}
