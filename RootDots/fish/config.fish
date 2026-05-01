if status is-interactive
    # --- Настройки интерфейса ---
    set -g fish_greeting "" 

    # --- Алиасы (Удобство и Скорость) ---
    # Основной редактор - micro
    alias m='micro'
    alias edit='micro'
    
    # Быстрый доступ к конфигам
    alias conf-hypr='micro ~/.config/hypr/hyprland.conf'
    alias conf-waybar='micro ~/.config/waybar/config'
    alias conf-fish='micro ~/.config/fish/config.fish'

    # Навигация и просмотр файлов (используем современные замены)
    if type -q eza
        alias ls='eza --icons --group-directories-first'
        alias ll='eza -l --icons --group-directories-first'
        alias tree='eza --tree --icons'
    end

    # Системные команды
    alias reload='hyprctl reload && pkill waybar && waybar &'
    alias ..='cd ..'
    alias ...='cd ../..'

    # --- Инициализация промпта ---
    starship init fish | source
end
