{ mkDerivation, aeson, aeson-pretty, ansi-wl-pprint, base, binary
, bytestring, containers, directory, edit-distance, elm-compiler
, filepath, HTTP, http-client, http-client-tls, http-types, mtl
, network, optparse-applicative, parallel-io, pretty, stdenv, text
, time, unordered-containers, vector, zip-archive
}:
mkDerivation {
  pname = "elm-package";
  version = "0.18";
  src = Elm-Platform/0.18/elm-package;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson aeson-pretty ansi-wl-pprint base binary bytestring containers
    directory edit-distance elm-compiler filepath HTTP http-client
    http-client-tls http-types mtl network parallel-io text time
    unordered-containers vector zip-archive
  ];
  executableHaskellDepends = [
    aeson aeson-pretty ansi-wl-pprint base binary bytestring containers
    directory edit-distance elm-compiler filepath HTTP http-client
    http-client-tls http-types mtl network optparse-applicative
    parallel-io pretty text time unordered-containers vector
    zip-archive
  ];
  homepage = "http://github.com/elm-lang/elm-package";
  description = "Package manager for Elm libraries";
  license = stdenv.lib.licenses.bsd3;
}
