FROM nixos/nix:latest

WORKDIR /app

RUN mkdir -p /etc/nix
RUN echo 'experimental-features = nix-command flakes' >/etc/nix/nix.conf

COPY flake.nix .

RUN nix build .

ENTRYPOINT cat result/share/AshitakaraHonkidasu.txt 
