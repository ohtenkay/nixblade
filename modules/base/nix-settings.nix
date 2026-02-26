{ ... }:
{
  flake.modules.nixos.base = {
    nixpkgs.config.allowUnfree = true;

    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}
