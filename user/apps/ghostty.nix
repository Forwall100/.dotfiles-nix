{ ... }:
{
  programs.ghostty = {
    enable = true;
    settings = {
      font-family = "CaskaydiaCove Nerd Font";
      font-size = 14;
      confirm-close-surface = false;
      keybind = [
        "ctrl+n=new_tab"
        "ctrl+w=close_tab"
        "ctrl+b>l=new_split:right"
        "ctrl+b>j=new_split:down"
        "ctrl+b>k=new_split:up"
        "ctrl+b>x=close_surface"
      ];
      window-theme = "ghostty";
      background-opacity = 0.9;
      background-blur = true;
      background-blur-radius = 80;
      shell-integration = "zsh";
      theme = "Everblush";
    };
  };
}
