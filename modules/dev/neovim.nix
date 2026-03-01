{ ... }:
{
  flake.modules.nixos.neovim =
    { flakeRoot, pkgs, ... }:
    {
      home-manager.users.ondrej =
        { config, ... }:
        {
          xdg.configFile."nvim".source =
            config.lib.file.mkOutOfStoreSymlink "${flakeRoot}/external-configs/nvim";
        };

      environment.systemPackages = with pkgs; [
        neovim
      ];

      environment.variables.EDITOR = "nvim";
    };
}
