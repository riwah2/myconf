{ pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    extraPackages = with pkgs; [
      intel-compute-runtime
      intel-media-driver
      (intel-vaapi-driver.override { enableHybridCodec = true; })
      vaapiVdpau
      libvdpau-va-gl
      mesa
      nvidia-vaapi-driver
      nv-codec-headers-12
    ];

    extraPackages32 = with pkgs.pkgsi686Linux; [
      intel-media-driver
      (intel-vaapi-driver.override { enableHybridCodec = true; })
      vaapiVdpau
      libvdpau-va-gl
      mesa
    ];
  };

  environment.systemPackages = with pkgs; [
    libva-utils
  ];
}
