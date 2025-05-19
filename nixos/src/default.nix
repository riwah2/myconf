{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./fonts.nix
    ./services.nix
    ./hyprland.nix
    ./pkgs.nix
    ./utils.nix
    ./programming-lg.nix
    ./terminal-utils.nix
    ./flatpak.nix
    ./greetd.nix
    ./vm.nix
    ./steam.nix
    ./starfish.nix
  ];
}
