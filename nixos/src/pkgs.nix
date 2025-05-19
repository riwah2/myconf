{
  pkgs,
  inputs,
  ...
}: {
  programs = {
    firefox.enable = false; # Firefox is not installed by default
    seahorse.enable = true;
    fuse.userAllowOther = true;
    mtr.enable = true;
    adb.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    appimage-run # Needed For AppImage Supportoto
    cliphist  # Clipboard manager using rofi menu
    file-roller # Archive Manager
    greetd.tuigreet # The Login Manager (Sometimes Referred To As Display Manager)
    eog # For Image Viewing
    lm_sensors # Used For Getting Hardware Temps
    ncdu # Disk Usage Analyzer With Ncurses Interface
    nwg-displays  #configure monitor configs via GUI
    pciutils # Collection Of Tools For Inspecting PCI Devices
    picard # For Changing Music Metadata & Getting Cover Art
    pkg-config # Wrapper Script For Allowing Packages To Get Info On Others
    rhythmbox
    socat # Needed For Screenshots
    unrar # Tool For Handling .rar Files
    unzip # Tool For Handling .zip Files
    usbutils # Good Tools For USB Devices
    v4l-utils # Used For Things Like OBS Virtual Camera
    ytmdl # Tool For Downloading Audio From YouTubea
    foot
    libsForQt5.kate
    libsForQt5.dolphin
    libadwaita
    wrapGAppsHook4
  ];
}
