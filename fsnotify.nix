{ mkDerivation, async, base, containers, directory, filepath
, hfsevents, stdenv, tasty, tasty-hunit, temporary-rc, text, time
, unix-compat
}:
mkDerivation {
  pname = "fsnotify";
  version = "0.2.1";
  sha256 = "0asl313a52qx2w6dw25g845683xsl840bwjh118nkwi5v1xipkzb";
  libraryHaskellDepends = [
    async base containers directory filepath hfsevents text time
    unix-compat
  ];
  testHaskellDepends = [
    async base directory filepath tasty tasty-hunit temporary-rc
    unix-compat
  ];
  homepage = "https://github.com/haskell-fswatch/hfsnotify";
  description = "Cross platform library for file change notification";
  license = stdenv.lib.licenses.bsd3;
}
