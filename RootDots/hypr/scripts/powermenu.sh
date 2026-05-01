#!/bin/bash

# Список действий (убрали лишние пробелы и кавычки)
entries=" Завершение\n󰜉 Рестарт\n󰤄 Сон\n󰈆 Выход\n󰷛 Блокировка"

# Вызов меню через fuzzel
selected=$(echo -e "$entries" | fuzzel --dmenu -p "Action: " --lines 5 --width 20)

# Логика выполнения
case "$selected" in
    *Завершение*) poweroff ;;
    *Рестарт*) reboot ;;
    *Сон*) systemctl suspend ;;
    *Выход*) hyprctl dispatch exit ;;
    *Блокировка*) hyprlock || swaylock ;;
esac
