{ ... }:
{
  flake.modules.nixos.dev =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        git
        lazygit
        wget
        ripgrep
        fd

        gcc
        tree-sitter
        unzip
        zip
        lua-language-server

        nodejs_25
        home-manager

        python3

        opencode

        lazysql

        vlc
        ddcutil
        ddcui

        yt-dlp
      ];
    };
}
