# home-manager/packages.nix
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Офисное
    obsidian

    # Разработка
    neovim
    git
    vscodium

    # CLI и системные утилиты
    wireguard-tools
    fzf
    tree
    fastfetch
    wget
    curl
    ghostty
    wl-clipboard
    yazi
    btop

    # Интернет
    telegram-desktop
    firefox

    # Оболочка
    waybar
    rofi-wayland
    hyprlock
    nautilus

    # Мультимедиа
    mpv
    feh
    hyprshot
    swww
    libnotify

    # Аудио и яркость
    brightnessctl
    pamixer

    # Bluetooth и сеть
    bluetui
  ];
}

