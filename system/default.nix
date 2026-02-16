{
  config,
  pkgs,
  lib,
  ...
}: {
  boot.tmp = {
    useTmpfs = true;
    cleanOnBoot = true;
  };

  fileSystems."/" = lib.mkDefault {
    device = "/dev/disk/by-label/nixos";
    fsType = "ext4";
  };
  swapDevices = [];

  time.timeZone = "UTC";
  i18n.defaultLocale = "en_US.UTF-8";

  users.users."username" = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    initialPassword = "password";
  };

  networking = {
    hostName = "hostname";
    useDHCP = lib.mkDefault true;
    firewall.enable = true;
  };

  services.openssh.enable = false;

  environment.systemPackages = with pkgs; [
    vis
  ];
}
