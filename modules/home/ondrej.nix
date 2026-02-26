{ inputs, ... }:
{
  flake.modules.nixos.base =
    { pkgs, ... }:
    {
      home-manager.users.ondrej = {
        home = {
          username = "ondrej";
          homeDirectory = "/home/ondrej";
          stateVersion = "25.11";

          packages = [
            inputs.gazelle.packages.${pkgs.system}.default
          ];
        };

        programs = {
          bash = {
            enable = true;
            shellAliases = {
              rebuild = "sudo nixos-rebuild switch --flake ~/nixblade";
            };
          };

          kitty = {
            enable = true;
          };
        };
      };
    };
}
