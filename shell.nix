{ compiler ? "ghc7103" }:

let
  config = {
    packageOverrides = pkgs: rec {
      haskell = pkgs.haskell // {
        packages = pkgs.haskell.packages // {
          "${compiler}" = pkgs.haskell.packages."${compiler}".override {
            overrides = haskellPackagesNew: haskellPackagesOld: rec {
              Diff = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./Diff.nix { });
              HTTP = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./HTTP.nix { });
              SHA = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./SHA.nix { });
              aeson-pretty = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./aeson-pretty.nix { });
              aeson = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./aeson.nix { });
              ansi-terminal = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./ansi-terminal.nix { });
              ansi-wl-pprint = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./ansi-wl-pprint.nix { });
              asn1-encoding = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./asn1-encoding.nix { });
              asn1-parse = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./asn1-parse.nix { });
              asn1-types = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./asn1-types.nix { });
              # attoparsec = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./attoparsec.nix { });
              base-compat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./base-compat.nix { });
              base64-bytestring = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./base64-bytestring.nix { });
              blaze-builder = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./blaze-builder.nix { });
              blaze-html = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./blaze-html.nix { });
              blaze-markup = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./blaze-markup.nix { });
              byteable = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./byteable.nix { });
              bytestring-builder = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./bytestring-builder.nix { });
              bytestring-trie = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./bytestring-trie.nix { });
              cereal = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./cereal.nix { });
              clock = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./clock.nix { });
              cmdargs = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./cmdargs.nix { });
              concatenative = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./concatenative.nix { });
              connection = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./connection.nix { });
              cookie = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./cookie.nix { });
              cryptonite = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./cryptonite.nix { });
              data-default-class = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./data-default-class.nix { });
              default = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./default.nix { });
              digest = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./digest.nix { systemZlib = pkgs.zlib; });
              dlist = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./dlist.nix { });
              edit-distance = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./edit-distance.nix { });
              entropy = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./entropy.nix { });
              extensible-exceptions = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./extensible-exceptions.nix { });
              fail = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./fail.nix { });
              file-embed = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./file-embed.nix { });
              foundation = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./foundation.nix { });
              fsnotify = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./fsnotify.nix { });
              hfsevents = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./hfsevents.nix { });
              hourglass = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./hourglass.nix { });
              http-client-tls = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./http-client-tls.nix { });
              http-client = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./http-client.nix { });
              http-types = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./http-types.nix { });
              indents = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./indents.nix { });
              # integer-logarithms = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./integer-logarithms.nix { });
              io-streams-haproxy = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./io-streams-haproxy.nix { });
              io-streams = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./io-streams.nix { });
              language-ecmascript = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./language-ecmascript.nix { });
              language-glsl = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./language-glsl.nix { });
              lifted-base = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./lifted-base.nix { });
              memory = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./memory.nix { });
              mime-types = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./mime-types.nix { });
              monad-control = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./monad-control.nix { });
              optparse-applicative = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./optparse-applicative.nix { });
              parallel-io = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./parallel-io.nix { });
              pem = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./pem.nix { });
              prettyclass = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./prettyclass.nix { });
              raw-strings-qq = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./raw-strings-qq.nix { });
              readable = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./readable.nix { });
              # scientific = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./scientific.nix { });
              semigroups = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./semigroups.nix { });
              shell = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./shell.nix { });
              snap-core = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./snap-core.nix { });
              snap-server = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./snap-server.nix { });
              socks = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./socks.nix { });
              streaming-commons = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./streaming-commons.nix { });
              tagged = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./tagged.nix { });
              tagshare = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./tagshare.nix { });
              testing-feat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./testing-feat.nix { });
              time-locale-compat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./time-locale-compat.nix { });
              tls = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./tls.nix { });
              transformers-base = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./transformers-base.nix { });
              transformers-compat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./transformers-compat.nix { });
              union-find = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./union-find.nix { });
              uniplate = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./uniplate.nix { });
              unix-compat = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./unix-compat.nix { });
              utf8-string = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./utf8-string.nix { });
              uuid-types = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./uuid-types.nix { });
              websockets-snap = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./websockets-snap.nix { });
              websockets = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./websockets.nix { });
              wl-pprint = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./wl-pprint.nix { });
              x509-store = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./x509-store.nix { });
              x509-system = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./x509-system.nix { });
              x509-validation = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./x509-validation.nix { });
              x509 = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./x509.nix { });
              zip-archive = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./zip-archive.nix { });
              zlib-bindings = pkgs.haskell.lib.dontCheck (haskellPackagesNew.callPackage ./zlib-bindings.nix { });

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
  pkgs.haskell.packages.${compiler}.elm-make
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
