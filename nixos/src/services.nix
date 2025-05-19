{pkgs, ...}: {
  # Systemd services setup
  systemd.packages = with pkgs; [
    auto-cpufreq
  ];

  # Enable Services
  programs.direnv.enable = true;
  services.upower.enable = true;
  programs.fish.enable = true;
  programs.dconf.enable = true;
  services.mpd.enable = true;
  services.auto-cpufreq.enable = false;
  environment.systemPackages = with pkgs; [
    at-spi2-atk
    qt6.qtwayland
    psi-notify
    brightnessctl
    ddcutil
    playerctl
    wf-recorder
    poweralertd
    psmisc
    grim
    slurp
    imagemagick
    swappy
    ffmpeg_6-full
    wl-screenrec
    wl-clipboard
    wl-clip-persist
    cliphist
    xdg-utils
    wtype
    wlrctl
    rofi-wayland
    dunst
    avizo
    gifsicle
    swww
    eww
  ];
}
