{config, pkgs, ...}:
{

  imports = [
 ./common
 ./desktop
 ./fastfetch
 ./services/waybar
 ./scripts
  ];
}
