# Declares the nixblade NixOS configuration by composing named modules.
{ config, ... }:
{
  configurations.nixos.nixblade.module = {
    imports = with config.flake.modules.nixos; [
      base
      desktop
      dev
      shell
      stylix
      nixblade-hardware
      # nvidia
      neovim
    ];

    networking.hostName = "nixblade";
    nixpkgs.hostPlatform = "x86_64-linux";

    # https://nixos.org/nixos/options.html
    system.stateVersion = "25.11";
  };
}
