# Provides an option for declaring NixOS configurations.
# These end up as flake outputs under nixosConfigurations."<name>".
{ lib, config, ... }:
{
  options.configurations.nixos = lib.mkOption {
    type = lib.types.lazyAttrsOf (
      lib.types.submodule {
        options.module = lib.mkOption {
          type = lib.types.deferredModule;
        };
      }
    );
  };

  config.flake.nixosConfigurations = lib.mapAttrs (
    name: { module }: lib.nixosSystem { modules = [ module ]; }
  ) config.configurations.nixos;
}
