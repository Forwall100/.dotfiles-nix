{
  services = {
    # Автозапуск через systemd
    swaync.enable = true;
    udiskie.enable = true;
    cliphist.enable = true;     

    # Hypridle как systemd сервис
    hypridle = {
      enable = true;
      settings = {
        # ваша конфигурация hypridle
      };
    };
  };
}

