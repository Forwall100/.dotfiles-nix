{ ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    
    settings = 
      (import ./animations.nix) //
      (import ./autostart.nix) //
      (import ./decoration.nix) //
      (import ./binds.nix) //
      (import ./general.nix) //
      (import ./gestures.nix) //
      (import ./input.nix) //
      (import ./layout.nix) //
      (import ./misc.nix) //
      (import ./monitors.nix);
  };
}

