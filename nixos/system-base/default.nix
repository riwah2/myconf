{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./laptop.nix
    ./boot.nix
    ./nvidia.nix
    ./sound.nix
    ./opengl.nix
    ./kb.nix
    ./gc.nix
    ./info-fetchers.nix
    #./.nix
    ./main-user.nix
    ./nix-settings.nix
    ./openssh.nix
    ./timezone.nix
  ];
}
