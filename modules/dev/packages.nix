{ ... }:
{
  flake.modules.nixos.dev =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        nodejs_25
        home-manager

        python3

        opencode
        qbittorrent
        brave

        lazysql

        vlc

        yt-dlp
      ];
    };
}
