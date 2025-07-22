{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware.nix
      ./boot.nix
      ./fonts.nix
      ./shell.nix
      ./desktop.nix
      ./sound.nix
      ./users.nix
      ./packages.nix
    ];

  networking.hostName = "thinkpad";
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Novosibirsk";

  # Enable touchpad support.
  services.libinput.enable = true;

  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allow unfree :(
  nixpkgs.config.allowUnfree = true;

  # Enable bluetooth
  hardware.bluetooth.enable = true; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot

  # Enable DNS service
  services.resolved.enable = true;

  system.stateVersion = "25.05";

}

