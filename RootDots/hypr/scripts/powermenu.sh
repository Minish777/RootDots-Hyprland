#!/bin/bash


entries=" Завершение\n󰜉 Рестарт\n󰤄 Сон\n󰈆 Выход\n󰷛 Блокировка"


selected=$(echo -e "$entries" | fuzzel --dmenu -p "Action: " --lines 5 --width 20)


case "$selected" in
    *Завершение*) poweroff ;;
    *Рестарт*) reboot ;;
    *Сон*) systemctl suspend ;;
    *Выход*) hyprctl dispatch exit ;;
    *Блокировка*) hyprlock || swaylock ;;
esac
