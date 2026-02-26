{ ... }:
{
  flake.modules.nixos.desktop = {
    hardware.bluetooth.enable = true;
    services.blueman.enable = true;
  };
}
