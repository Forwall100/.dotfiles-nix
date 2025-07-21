{ config, lib, pkgs, ... }:

let
  modules = import ./modules.nix { inherit config lib pkgs; };
  style = import ./style.nix;
in
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        margin = "5 5 0";
        "fixed-center" = true;
        reload_style_on_change = true;
        height = 34;
        width = 400;
        modules-left = [ "clock" ];
        modules-center = [ "hyprland/workspaces" ];
        modules-right = [ "group/custom-group" ];

        # Импортируем модули
        "hyprland/workspaces" = modules.hyprlandWorkspaces;
        clock = modules.clock;
        battery = modules.battery;
        network = modules.network;
        "group/custom-group" = modules.customGroup;
        bluetooth = modules.bluetooth;
        "custom/cpu-temp" = modules.cpuTemp;
      };
    };
    style = style;
  };
}

