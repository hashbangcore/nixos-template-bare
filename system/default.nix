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

  users.users."hash" = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    initialPassword = "hash";
  };

  networking = {
    hostName = "minimal";
    useDHCP = lib.mkDefault true;
    firewall.enable = true;
  };

  services.openssh.enable = true;

  environment.systemPackages = with pkgs; [
    git
    neovim
  ];
}
