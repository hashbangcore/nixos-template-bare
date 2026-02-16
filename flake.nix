{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
  };
  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    system = "x86_64-linux";
  in {
    nixosConfigurations.system = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./system
        {
          system.stateVersion = "25.11";

          nix.settings.experimental-features = [
            "nix-command"
            "flakes"
          ];
        }
      ];
    };
  };
}
