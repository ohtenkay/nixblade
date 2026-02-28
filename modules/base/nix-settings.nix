{ ... }:
{
  flake.modules.nixos.base = {
    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.android_sdk.accept_license = true;

    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}
