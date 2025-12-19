{
  description = "Lnxll's Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";
    hyprland.url = "github:hyprwm/Hyprland";
    stylix.url = "github:danth/stylix";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    astal = {
      url = "github:aylur/astal";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ags = {
      url = "github:aylur/ags";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.astal.follows = "astal";
    };
  };

  outputs = inputs@{ self, ... }: 
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = { 
      x390y = inputs.nixpkgs.lib.nixosSystem {
        system = system;
        modules = [
          inputs.stylix.nixosModules.stylix
          inputs.home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = { inherit inputs; };
          }
          ./hosts/x390y
        ];
        specialArgs = {
          inherit inputs system;
        };
      };
    };
  };
}