{ ... }:
{
  flake.modules.nixos.dev =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        jdk21
        maven
        jdt-language-server
        lombok
      ];
    };
}
