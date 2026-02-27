{ ... }:
{
  flake.modules.nixos.desktop =
    { pkgs, ... }:
    {
      programs.firefox.enable = true;
      programs.niri.enable = true;

      services.greetd = {
        enable = true;
        settings = {
          default_session = {
            command = "niri";
            user = "ondrej";
          };
        };
      };

      environment.systemPackages = with pkgs; [
        xwayland-satellite
        fuzzel
      ];

      home-manager.users.ondrej.programs.kitty = {
        enable = true;
      };
    };
}
