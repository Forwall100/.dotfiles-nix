{
  exec-once = [
    # Системные сервисы
    "hypridle"
    "swaync"
    "swww-daemon"
    "udiskie"
    "waybar"
    
    # Пользовательские скрипты
    "~/.dotfiles/scripts/set_wallpaper.sh"
    
    # Менеджер буфера обмена
    "wl-paste --type text --watch cliphist store"
    "wl-paste --type image --watch cliphist store"
    
    # Переменные окружения для D-Bus
    "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
    "dbus-update-activation-environment --systemd HYPRLAND_INSTANCE_SIGNATURE"

    # Меняем курсор на дефолтный
    "hyprctl setcursor Adwaita 24"
  ];
  
  # Команда, которая выполняется при каждом перезапуске
  exec = [
    "hyprshade auto"
  ];
}

