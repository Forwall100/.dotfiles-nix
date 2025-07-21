let
  mod = "SUPER";
  
  # Генерируем бинды воркспейсов функционально
  workspaceBinds = builtins.concatMap (i:
    let
      ws = if i == 10 then "0" else toString i;
      key = if i == 10 then "0" else toString i;
    in [
      "${mod}, ${key}, workspace, ${toString i}"
      "${mod} SHIFT, ${key}, movetoworkspace, ${toString i}"
    ]
  ) (builtins.genList (i: i + 1) 10);
in
{
  "$mainMod" = mod;
  
  bind = [
    # === Основные приложения ===
    "${mod}, E, exec, nautilus"
    "${mod}, D, exec, rofi -show drun"
    "${mod}, RETURN, exec, ghostty"
    "${mod} SHIFT, RETURN, exec, [float; size 45% 50%; centerwindow] ghostty"
    
    # === Управление окнами ===
    "${mod}, Q, killactive"
    "${mod}, V, togglefloating"
    "${mod}, J, togglesplit"
    "${mod}, P, pseudo"
    "${mod} SHIFT, F, fullscreen, 0"
    "${mod} SHIFT, C, centerwindow"
    
    # === Системные действия ===
    "${mod}, L, exec, hyprlock"
    "${mod} SHIFT, L, exec, wlogout -b 4 -m 260px"
    "${mod} SHIFT, E, exit"
    "${mod} SHIFT, R, exec, hyprctl reload"
    
    # === Утилиты ===
    "${mod}, N, exec, swaync-client -t -sw"
    "${mod} SHIFT, D, exec, ~/.config/rofi/assets/calc.sh"
    "${mod} SHIFT, V, exec, ~/.config/rofi/assets/clipManager.sh"
    "${mod} SHIFT, B, exec, ~/.config/hypr/scripts/wallpaper_select.sh"
    "${mod} SHIFT, O, exec, ~/.config/waybar/script/waybar_restart.sh"
    
    # === Скриншоты ===
    "${mod} SHIFT, S, exec, hyprshot -m region"
    
    # === Навигация ===
    "${mod}, left, movefocus, l"
    "${mod}, right, movefocus, r"
    "${mod}, up, movefocus, u"
    "${mod}, down, movefocus, d"
    
    # === Перемещение окон ===
    "${mod} SHIFT, left, movewindow, l"
    "${mod} SHIFT, right, movewindow, r"
    "${mod} SHIFT, up, movewindow, u"
    "${mod} SHIFT, down, movewindow, d"
    
    # === Изменение размера ===
    "CTRL ${mod}, right, resizeactive, 50 0"
    "CTRL ${mod}, left, resizeactive, -50 0"
    "CTRL ${mod}, down, resizeactive, 0 50"
    "CTRL ${mod}, up, resizeactive, 0 -50"
    
    # === Воркспейсы ===
    "${mod}, mouse_down, workspace, e+1"
    "${mod}, mouse_up, workspace, e-1"
    "${mod}, period, workspace, e+1"
    "${mod}, comma, workspace, e-1"
    "ALT, TAB, workspace, e+1"
    
    # === Submap ===
    "${mod}, X, submap, passthru"
    "SUPER, Escape, submap, reset"
    
    # === Яркость ===
    ", XF86MonBrightnessUp, exec, ~/.dotfiles/scripts/brightness.sh --inc"
    ", XF86MonBrightnessDown, exec, ~/.dotfiles/scripts/brightness.sh --dec"
  ] ++ workspaceBinds;
  
  bindl = [
    ", XF86AudioRaiseVolume, exec, ~/.dotfiles/scripts/volume.sh --inc"
    ", XF86AudioLowerVolume, exec, ~/.dotfiles/scripts/volume.sh --dec"
    ", XF86AudioMute, exec, ~/.dotfiles/scripts/volume.sh --toggle"
    ", switch:off:Lid Switch, exec, systemctl suspend"
  ];
  
  bindm = [
    "${mod}, mouse:272, movewindow"
    "${mod}, mouse:273, resizewindow"
  ];
}

