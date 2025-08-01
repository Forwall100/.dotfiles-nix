{ config, lib, pkgs, ... }:

{
  hyprlandWorkspaces = {
    format = "{id}";
    on-click = "activate";
    all-outputs = true;
    format-icons = {
      default = " ";
      active = " ";
    };
  };

  clock = {
    format = "{:%I:%M %p}";
    tooltip-format = "<tt><small>{calendar}</small></tt>";
    calendar = {
      format = {
        months = "<span color='#ffead3'><b>{}</b></span>";
        weekdays = "<span color='#ffcc66'><b>{}</b></span>";
        today = "<span color='#ffcc66'><b><u>{}</u></b></span>";
      };
    };
  };

  battery = {
    states = {
      good = 95;
      warning = 30;
      critical = 20;
    };
    format = "{icon} {capacity}";
    format-charging = "󰋠 {capacity}";
    format-plugged = "󰋠  {capacity}";
    format-alt = "{time} {icon}";
    format-icons = [
      "󱢠 󱢠 󱢠 "
      "󱢠 󱢠 󰛞 "
      "󱢠 󱢠 󰛞 "
      "󱢠 󱢠 󰋑 "
      "󱢠 󰛞 󰋑 "
      "󱢠 󰛞 󰋑 "
      "󱢠 󰋑 󰋑 "
      "󰛞 󰋑 󰋑 "
      "󰛞 󰋑 󰋑 "
      "󰋑 󰋑 󰋑 "
    ];
  };

  network = {
    format-wifi = "󰤨 {signalStrength}%";
    format-ethernet = "{ipaddr}/{cidr}";
    format-linked = "{ifname} (No IP)";
    format-disconnected = "󰤭 ";
    on-click = "ghostty -e nmtui";
    tooltip-format = "Network: <big><b>{essid}</b></big>\nSignal strength: <b>{signaldBm}dBm ({bandwidthDownBytes})</b>\nFrequency: <b>{frequency}MHz</b>\nInterface: <b>{ifname}</b>";
  };

  customGroup = {
    orientation = "horizontal";
    spacing = 10;
    modules = [
      "network"
      "bluetooth"
      "battery"
    ];
  };

  bluetooth = {
    format = "󰂯 {status}";
    format-disabled = " off";
    format-connected = " {num_connections}";
    tooltip-format = "{device_alias}";
    tooltip-format-connected = " {device_enumerate}";
    tooltip-format-enumerate-connected = "{device_alias}";
    on-click = "ghostty -e bluetui";
  };

  cpuTemp = {
    format = "  {}";
    exec = "sensors | grep \"Tctl\" | awk '{print $2}' | sed 's/+//' | sed 's/\\..*°C/°C/'";
    interval = 5;
    tooltip = false;
    on-click = "exec ghostty -e htop";
  };
}

