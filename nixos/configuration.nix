{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other NixOS modules here
  imports = [
     inputs.hardware.nixosModules.common-ssd
    ./hardware-configuration.nix
    ./system-base
    ./src
  ];
 services.desktopManager.cosmic.enable = true ;
  asus.enable = true;
  # TODO: Set your hostname
  networking.hostName = "irix";
  system.stateVersion = "25.11";
}
