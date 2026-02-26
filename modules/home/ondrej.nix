{ ... }:
{
  flake.modules.nixos.base =
    { ... }:
    {
      home-manager.users.ondrej = {
        home = {
          username = "ondrej";
          homeDirectory = "/home/ondrej";
          stateVersion = "25.11";

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
