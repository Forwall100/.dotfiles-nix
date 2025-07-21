{ config, pkgs, lib, ... }:
let
  appsDir = ./. + "/apps";
  nixFiles = builtins.filter (f: lib.stringEndsWith ".nix" f) (builtins.readDir appsDir);
  importsList = map (f: "${appsDir}/${f}") nixFiles;
  # Import secrets from user/secrets.nix
  secrets = import ./secrets.nix;
in
{
  home.username = "user";
  home.homeDirectory = "/home/user";
  home.stateVersion = "25.05";

  imports = [
    ./shell.nix
    ./environment.nix
    ./apps/ghostty.nix
    ./apps/git.nix
    ./apps/vscodium.nix
    ./apps/rofi/config.nix
    ./apps/waybar/config.nix
    ./apps/firefox.nix
    ./services.nix
    ./packages.nix
    ./wm/hypr/hypr.nix
  ];

  home.packages = [
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;

  _module.args.secrets = secrets;
}
