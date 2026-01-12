{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    stylix.url = "github:danth/stylix";
    hyprland.url = "github:hyprwm/Hyprland";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser.url = "github:0xc000022070/zen-browser-flake/beta";
  };

  outputs = inputs@{self, ...}: {
    nixosConfigurations = {
      x390y = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          inputs.stylix.nixosModules.stylix
	        inputs.home-manager.nixosModules.home-manager
          { home-manager.extraSpecialArgs = { inherit inputs; }; }
          ./hosts/x390y
        ];
        specialArgs = { inherit inputs; };
      };
    };  
  };
}
