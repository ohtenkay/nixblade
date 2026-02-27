{ ... }:
{
  flake.modules.nixos.shell = {
    home-manager.users.ondrej.programs.nushell = {
      enable = true;
    };
  };
}
