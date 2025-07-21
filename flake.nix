{

  description = "My flake!";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {self, nixpkgs, home-manager, ...}:
  let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      thinkpad = lib.nixosSystem {
        inherit system;
	modules = [ 
	  ./system/configuration.nix
	  home-manager.nixosModules.home-manager
	  ({config, pkgs, ... }: {
	    home-manager.useGlobalPkgs = true;
	    home-manager.useUserPackages = true;
	    home-manager.users.user = import ./user/home.nix;
	    home-manager.backupFileExtension = "backup";
	  })
	];
	specialArgs = { inherit home-manager; };
      };
    }; 
  };
}
