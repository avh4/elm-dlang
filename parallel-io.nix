{ mkDerivation, base, containers, extensible-exceptions, random
, stdenv
}:
mkDerivation {
  pname = "parallel-io";
  version = "0.3.3";
  sha256 = "0i86x3bf8pjlg6mdg1zg5lcrjpg75pbqs2mrgrbp4z4bkcmw051s";
  revision = "1";
  editedCabalFile = "75eeeb51593fa2771c8dbc965ca09d830d62e08135870188a10446f842178bee";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base containers extensible-exceptions random
  ];
  homepage = "http://batterseapower.github.com/parallel-io";
  description = "Combinators for executing IO actions in parallel on a thread pool";
  license = stdenv.lib.licenses.bsd3;
}
