{ ... }:
{
  flake.modules.nixos.shell = {
    home-manager.users.ondrej.programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
    };
  };
}
