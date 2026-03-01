# Example: how to declare a second host.
# Uncomment and adjust to add a new machine.

{ config, inputs, ... }:
let
  nixos = config.flake.modules.nixos;
in
{
  # Create a hardware module at modules/hardware/example-server.nix first:
  #
  # { ... }:
  # {
  #   flake.modules.nixos.example-server-hardware = { modulesPath, ... }: {
  #     imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];
  #     # ... generated hardware settings
  #   };
  # }

  flake.nixosConfigurations.example-server = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      nixos.base
      # nixos.example-server-hardware
      # add only the named modules this host needs
      # nixos.desktop  -- omit for a headless server
      # nixos.dev      -- omit if no dev tools needed

      {
        networking.hostName = "example-server";
        nixpkgs.hostPlatform = "x86_64-linux";
        system.stateVersion = "25.11";
      }
    ];
  };
}
