{ mkDerivation, base, containers, hashable, stdenv, syb
, unordered-containers
}:
mkDerivation {
  pname = "uniplate";
  version = "1.6.12";
  sha256 = "1dx8f9aw27fz8kw0ad1nm6355w5rdl7bjvb427v2bsgnng30pipw";
  libraryHaskellDepends = [
    base containers hashable syb unordered-containers
  ];
  homepage = "http://community.haskell.org/~ndm/uniplate/";
  description = "Help writing simple, concise and fast generic operations";
  license = stdenv.lib.licenses.bsd3;
}
