{ inputs, ... }:
{
  flake.modules.nixos.base = {
    imports = [ inputs.home-manager.nixosModules.home-manager ];

    users.users.ondrej = {
      isNormalUser = true;
      description = "ondrej";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };

    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
    };
  };
}
