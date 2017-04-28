{ mkDerivation, base, containers, data-default-class, Diff
, directory, filepath, HUnit, mtl, parsec, QuickCheck, stdenv
, template-haskell, test-framework, test-framework-hunit
, test-framework-quickcheck2, testing-feat, uniplate, wl-pprint
}:
mkDerivation {
  pname = "language-ecmascript";
  version = "0.17.1.0";
  sha256 = "0gl82zq50x98jzagkzdb5fgf5gnspvpx6i66g3r25mcn606ky7nz";
  revision = "2";
  editedCabalFile = "c65730a251b7051a95c3ce313b16502830d2685fb7f88eabde1f323b388acd72";
  libraryHaskellDepends = [
    base containers data-default-class Diff mtl parsec QuickCheck
    template-haskell testing-feat uniplate wl-pprint
  ];
  testHaskellDepends = [
    base containers data-default-class Diff directory filepath HUnit
    mtl parsec QuickCheck test-framework test-framework-hunit
    test-framework-quickcheck2 uniplate wl-pprint
  ];
  homepage = "http://github.com/jswebtools/language-ecmascript";
  description = "JavaScript parser and pretty-printer library";
  license = stdenv.lib.licenses.bsd3;
}
