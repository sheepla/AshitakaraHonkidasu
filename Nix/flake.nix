{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
        stdenv = pkgs.stdenv;
        ashitakara-honkidasu = stdenv.mkDerivation rec {
          name = "AshitakaraHonkidasu";

          src = ./.;

          nativeBuildInputs = [
            pkgs.coreutils
          ];

          buildPhase = ''
            mkdir -p $out/share
            echo "$(date -d "+1 day" +"%m/%d")から本気出す" > $out/share/${name}.txt
          '';
        };
      in
      {
        packages = {
          inherit ashitakara-honkidasu;
          default = ashitakara-honkidasu;
        };
      });
}
