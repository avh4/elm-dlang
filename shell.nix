{ compiler ? "ghc7103" }:

let
  config = {
    packageOverrides = pkgs: rec {
      haskell = pkgs.haskell // {
        packages = pkgs.haskell.packages // {
          "${compiler}" = pkgs.haskell.packages."${compiler}".override {
            overrides = haskellPackagesNew: haskellPackagesOld: rec {
              Diff = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/Diff.nix { });
              HTTP = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/HTTP.nix { });
              SHA = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/SHA.nix { });
              aeson-pretty = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/aeson-pretty.nix { });
              aeson = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/aeson.nix { });
              ansi-terminal = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/ansi-terminal.nix { });
              ansi-wl-pprint = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/ansi-wl-pprint.nix { });
              asn1-encoding = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/asn1-encoding.nix { });
              asn1-parse = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/asn1-parse.nix { });
              asn1-types = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/asn1-types.nix { });
              # attoparsec = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/attoparsec.nix { });
              base-compat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/base-compat.nix { });
              base64-bytestring = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/base64-bytestring.nix { });
              blaze-builder = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/blaze-builder.nix { });
              blaze-html = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/blaze-html.nix { });
              blaze-markup = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/blaze-markup.nix { });
              byteable = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/byteable.nix { });
              bytestring-builder = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/bytestring-builder.nix { });
              bytestring-trie = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/bytestring-trie.nix { });
              cereal = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/cereal.nix { });
              clock = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/clock.nix { });
              cmdargs = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/cmdargs.nix { });
              concatenative = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/concatenative.nix { });
              connection = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/connection.nix { });
              cookie = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/cookie.nix { });
              cryptonite = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/cryptonite.nix { });
              data-default-class = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/data-default-class.nix { });
              default = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/default.nix { });
              digest = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/digest.nix { systemZlib = pkgs.zlib; });
              dlist = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/dlist.nix { });
              edit-distance = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/edit-distance.nix { });
              entropy = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/entropy.nix { });
              extensible-exceptions = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/extensible-exceptions.nix { });
              fail = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/fail.nix { });
              file-embed = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/file-embed.nix { });
              foundation = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/foundation.nix { });
              fsnotify = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/fsnotify.nix { });
              hfsevents = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/hfsevents.nix { });
              hourglass = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/hourglass.nix { });
              http-client-tls = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/http-client-tls.nix { });
              http-client = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/http-client.nix { });
              http-types = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/http-types.nix { });
              indents = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/indents.nix { });
              # integer-logarithms = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/integer-logarithms.nix { });
              io-streams-haproxy = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/io-streams-haproxy.nix { });
              io-streams = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/io-streams.nix { });
              language-ecmascript = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/language-ecmascript.nix { });
              language-glsl = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/language-glsl.nix { });
              lifted-base = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/lifted-base.nix { });
              memory = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/memory.nix { });
              mime-types = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/mime-types.nix { });
              monad-control = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/monad-control.nix { });
              optparse-applicative = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/optparse-applicative.nix { });
              parallel-io = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/parallel-io.nix { });
              pem = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/pem.nix { });
              prettyclass = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/prettyclass.nix { });
              raw-strings-qq = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/raw-strings-qq.nix { });
              readable = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/readable.nix { });
              # scientific = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/scientific.nix { });
              semigroups = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/semigroups.nix { });
              shell = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/shell.nix { });
              snap-core = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/snap-core.nix { });
              snap-server = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/snap-server.nix { });
              socks = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/socks.nix { });
              streaming-commons = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/streaming-commons.nix { });
              tagged = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/tagged.nix { });
              tagshare = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/tagshare.nix { });
              testing-feat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/testing-feat.nix { });
              time-locale-compat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/time-locale-compat.nix { });
              tls = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/tls.nix { });
              transformers-base = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/transformers-base.nix { });
              transformers-compat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/transformers-compat.nix { });
              union-find = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/union-find.nix { });
              uniplate = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/uniplate.nix { });
              unix-compat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/unix-compat.nix { });
              utf8-string = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/utf8-string.nix { });
              uuid-types = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/uuid-types.nix { });
              websockets-snap = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/websockets-snap.nix { });
              websockets = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/websockets.nix { });
              wl-pprint = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/wl-pprint.nix { });
              x509-store = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/x509-store.nix { });
              x509-system = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/x509-system.nix { });
              x509-validation = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/x509-validation.nix { });
              x509 = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/x509.nix { });
              zip-archive = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/zip-archive.nix { });
              zlib-bindings = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./nix/zlib-bindings.nix { });

              elm-compiler = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./elm-compiler.nix { });
              elm-package = haskellPackagesNew.callPackage ./elm-package.nix { };
              elm-make = haskellPackagesNew.callPackage ./elm-make.nix { };
            };
          };
        };
      };
    };
  };

  pkgs = import <nixpkgs> { inherit config; };

in
  rec {
    elm-compiler = pkgs.haskell.packages.${compiler}.elm-compiler;
    elm-make = pkgs.haskell.packages.${compiler}.elm-make;
    elm-package = pkgs.haskell.packages.${compiler}.elm-package;
    elm-d = import ./default.nix {
      stdenv = pkgs.stdenv;
      elm-d-make = elm-make;
      dmd = pkgs.dmd;
    };
  }
  # pkgs.stdenv.mkDerivation {
  #   name = "elm-dlang";
  #   buildInputs = [
  #     # pkgs.haskell.packages.${compiler}.project1
  #     pkgs.cabal-install
  #     # pkgs.haskellPackages.Cabal_1_20_0_4
  #     # pkgs.haskellPackages.Cabal_1_18_1_7
  #     pkgs.haskell.packages.${compiler}.elm-compiler.env
  #     pkgs.haskell.compiler.ghc7103
  #     pkgs.dmd
  #   ];
  # }

#  { project1 = pkgs.haskell.packages.${compiler}.project1;
#  }.project1.env
