{
  config,
  lib,
  pkgs,
  ...
}: {
  options.asus = {
    enable = lib.mkEnableOption "Asus Laptop";
  };

  config = lib.mkIf config.asus.enable {
    # ----Asusctl----
    services.asusd = {
      enable = true;
      enableUserService = true;
    };
   #----- Base services-----
     # Network
   networking.networkmanager.enable = true;
   environment.systemPackages = with pkgs; [networkmanagerapplet asusctl];
     # Bluetooth
   hardware.bluetooth = {
   enable = true;
    powerOnBoot = false;
    settings.General.Experimental = true; # bluetooth percentage#  
    };
    services = {
    printing.enable = true;
  };
    # openrgb
    services.hardware.openrgb.enable = true;

    };

}
