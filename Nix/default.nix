{ pkgs ? import <nixpkgs> { } }:

let
  stdenv = pkgs.stdenv;
in
stdenv.mkDerivation rec {
  name = "AshitakaraHonkidasu";

  src = ./.;

  nativeBuildInputs = [
    pkgs.coreutils
  ];

  buildPhase = ''
    mkdir -p $out/share
    echo "$(date -d "+1 day" +"%m/%d")から本気出す" > $out/share/${name}.txt
  '';
}
