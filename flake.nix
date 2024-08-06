{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config = { 
            allowUnfree = true;
          };
        };

        devShellPackages = with pkgs; [
          gcc # for any python package that requires compilation
          poetry
          zlib
        ];

        development = true;
      in
      rec {
        devShell = pkgs.mkShell {
          buildInputs = devShellPackages;
          shellHook = if development then (with pkgs; ''
            export LD_LIBRARY_PATH="${stdenv.cc.cc.lib}/lib"
            poetry run python -c "import jax; print(jax.devices())"
          '') else "";
        };
      }
    );
}