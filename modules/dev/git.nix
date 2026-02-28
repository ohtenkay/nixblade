# Git configuration via home-manager, with email managed by agenix.
{ ... }:
{
  flake.modules.nixos.dev = {
    home-manager.users.ondrej =
      { config, ... }:
      {
        age.secrets.git-email.file = ../../secrets/git-email.age;

        programs.git = {
          enable = true;
          settings.user.name = "Ondrej Hlozek";
          includes = [
            { path = config.age.secrets.git-email.path; }
          ];
        };
      };
  };
}
