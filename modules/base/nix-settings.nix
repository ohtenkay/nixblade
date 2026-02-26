{ inputs, ... }:
{
  flake.modules.nixos.base = {
    nixpkgs.config.allowUnfree = true;

    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];

    # For nixd, enables custom options
    nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];
  };
}
