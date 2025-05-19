{
  config,
  lib,
  ...
}: {
  users.users = {
    # FIXME: Replace with your username
    riwex = {
      initialPassword = "qwwe";
      isNormalUser = true;
      openssh.authorizedKeys.keys = [
      ];
      extraGroups = ["nixosvmtest" "networkmanager" "wheel" "audio" "video" "libvirtd" "docker"];
    };
  };
}
