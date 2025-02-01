let
  nixpkgsPath =
    let
      rev = "9189ac18287c599860e878e905da550aa6dec1cd";
    in
      builtins.fetchTarball {
        url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
        sha256 = "sha256:0hbbpljkrj2mn5giq8cympf3cn6ihcrdm2n4glsdbwgd3hadm2q1";
      };

  pkgs = import nixpkgsPath {};

in
pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.haskell.compiler.ghc98
    pkgs.cabal-install
  ];
}
