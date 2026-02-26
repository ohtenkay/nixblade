{
  description = "Nixblade system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    import-tree.url = "github:vic/import-tree";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    gazelle.url = "github:Zeus-Deus/gazelle-tui";
  };

  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      stylix,
      ...
    }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.nixblade = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ./configuration.nix
          stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.ondrej = import ./home.nix;
              extraSpecialArgs = {
                inherit inputs;
              };
            };
          }
        ];
      };
    };
}
