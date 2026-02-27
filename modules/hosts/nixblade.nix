# Declares the nixblade NixOS configuration by composing named modules.
{ config, ... }:
let
  nixos = config.flake.modules.nixos;
in
{
  configurations.nixos.nixblade.module = {
    imports = [
      nixos.base
      nixos.desktop
      nixos.dev
      nixos.shell
      nixos.stylix
      nixos.nixblade-hardware
    ];

    networking.hostName = "nixblade";
    nixpkgs.hostPlatform = "x86_64-linux";

    # https://nixos.org/nixos/options.html
    system.stateVersion = "25.11";
  };
}
