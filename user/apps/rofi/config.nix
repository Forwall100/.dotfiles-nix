{ config, pkgs, ... }:
{
  programs.rofi = {
    enable  = true;
    package = pkgs.rofi-wayland;
    theme   = "~/.dotfiles/user/apps/rofi/theme.rasi";
    extraConfig = {
      # показывать иконки
      show-icons = true;
      # режимы запуска
      modi       = "drun,run,window";
      # (при необходимости) другие опции:
      # lines      = 12;
      # fixed-height = true;
    };
  };
}

