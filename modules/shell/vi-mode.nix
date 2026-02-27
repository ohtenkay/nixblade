{ ... }:
{
  flake.modules.nixos.shell = {
    home-manager.users.ondrej = {
      programs.zsh.defaultKeymap = "viins";

      programs.nushell.extraConfig = ''
        $env.config.edit_mode = vi
      '';
    };
  };
}
