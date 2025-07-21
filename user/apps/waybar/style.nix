''
/* Основные цвета */
@define-color main-bg     #1a1a1a;  /* тёмно-серый фон */
@define-color main-fg     #f0f0f0;  /* ярко-белый текст */
@define-color secondary   #cccccc;  /* светло-серый */

/* Сброс базовых стилей */
* {
    margin: 0;
    padding: 0;
    border: none;
    border-radius: 0;
    font-family: "DepartureMono Nerd Font Mono", monospace;
    font-weight: bold;
    font-size: 15px;
}

/* Контейнер Waybar */
window#waybar {
    background: rgba(26,26,26,0.5);
    border-radius: 16px;
    padding: 4px 8px;   /* внутренние отступы */
    margin: 0 0px;      /* внешние отступы с учётом gap */
}

/* Подсказки */
tooltip {
    background: rgba(26,26,26,0.9);
    border: 1px solid rgba(204,204,204,0.4);
    border-radius: 8px;
    padding: 4px 8px;
}
tooltip label {
    color: #f0f0f0;
    font-size: 14px;
}

/* Общие секции */
#workspaces,
#window,
#clock,
#battery,
#network,
#memory,
#bluetooth {
    background: transparent;
    color: #f0f0f0;
    padding: 0 12px;
    margin: 0 4px;
}

/* Секция рабочих пространств */
#workspaces {
    background: rgba(26,26,26,0.0);
    border-radius: 12px;
}

/* Кнопки рабочих пространств */
#workspaces button {
    background: transparent;
    color: rgba(240,240,240,0.6);
    border-radius: 8px;
    padding: 2px 6px;
    margin: 2px;
}
#workspaces button:hover {
    color: #f0f0f0;
    background: rgba(204,204,204,0.1);
}
#workspaces button.active {
    background: rgba(240,240,240,0.2);
    color: #f0f0f0;
    border-radius: 12px;
    padding: 2px 10px;
}
#workspaces button.focused,
#workspaces button.urgent {
    background: rgba(240,240,240,0.15);
    color: #f0f0f0;
}

/* Виджет текущего окна */
#window {
    background: rgba(26,26,26,0.5);
    border-radius: 8px;
    margin: 0 12px;
}

/* Виджет температуры CPU */
#custom-cpu-temp {
    color: #f0f0f0;
}

/* Часы */
#clock {
    font-family: "DepartureMono Nerd Font Mono", monospace;
    color: #f0f0f0;
    background: transparent;
    padding: 0 12px;
    margin: 0 4px;
}

/* Календарь */
#calendar {
    font-family: "DepartureMono Nerd Font Mono", monospace;
    color: #f0f0f0;
    background: rgba(26,26,26,0.6);
    border-radius: 8px;
    padding: 4px 8px;
    margin: 0 8px;
}
''
