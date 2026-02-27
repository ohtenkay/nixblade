{ inputs, ... }:
let
  # TODO: This is a bit hacky, explore other options
  flakeRoot = "/home/ondrej/nixblade";
in
{
  flake.modules.nixos.base = {
    imports = [ inputs.home-manager.nixosModules.home-manager ];

    # Make flakeRoot available to all NixOS modules as a module argument.
    _module.args.flakeRoot = flakeRoot;

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
      # Make flakeRoot available to all Home Manager modules as a module argument.
      extraSpecialArgs = { inherit flakeRoot; };
    };

    home-manager.users.ondrej = {
      home = {
        username = "ondrej";
        homeDirectory = "/home/ondrej";
        stateVersion = "25.11";
      };

      programs.bash = {
        enable = true;
        shellAliases = {
          rebuild = "sudo nixos-rebuild switch --flake ~/nixblade";
        };
      };
    };
  };
}
