{ ... }:
{
  flake.modules.nixos.dev =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        neovim
        kitty
        alacritty
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

        nixfmt
        nixd

        jdk21
        maven
        jdt-language-server
        lombok

        haskell-language-server
        ghc
        cabal-install
        hlint

        wiremix

        opencode
        wifitui

        python3

        lazysql

        vlc

        bluetui
      ];
    };
}
