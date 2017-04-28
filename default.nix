{ mkDerivation, base, cabal-install, stdenv }:
mkDerivation {
  pname = "project0";
  version = "1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base ];
  #buildTools = [ cabal-install ];
  license = stdenv.lib.licenses.bsd3;
}
# { mkDerivation ? (import <nixpkgs> {}).mkDerivation, haskellPackages ? (import <nixpkgs> {}).haskellPackages }:
# let
#   inherit (haskellPackages) Cabal_1_24_2_0
#     text mtl transformers; # Haskell dependencies here
# 
# in mkDerivation (self: {
#   pname = "project-name";
#   version = "1.0.0";
#   src = ./.;
#   buildDepends = [
#     # As imported above
#     # text mtl transformers
#   ];
#   buildTools = [ Cabal_1_24_2_0 ];
#   enableSplitObjs = false;
# })
#   let
#     pkgs = import <nixpkgs> {};
#     stdenv = pkgs.stdenv;
#   in rec {
#     clangEnv = stdenv.mkDerivation rec {
#       name = "clang-env";
#       version = "1.1.1.1";
#       src = ./.;
#       buildInputs = [ pkgs.haskell.compiler.ghc7103 ];
#     };
#   }
