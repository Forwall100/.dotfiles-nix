{ ... }:
{
  i18n.defaultLocale = "ru_RU.UTF-8";

  services.xserver = {
    enable = true;
    displayManager.gdm = {
      enable = true;
      wayland = true;
    };
  };

  # Needed for run electron apps
  environment.sessionVariables.MIXOS_OZONE_WL = "1";

  # Setup hyprland
  programs.hyprland = {
   enable = true;
   xwayland.enable = true;
  };
}
