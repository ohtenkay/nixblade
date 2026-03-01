# Needed for flake-parts to work.
{ inputs, ... }:
{
  imports = [
    # https://flake.parts/options/flake-parts-modules.html
    inputs.flake-parts.flakeModules.modules
  ];

  # Optional now, since I currently don't use any perSystem.
  systems = [
    "x86_64-linux"
  ];
}
