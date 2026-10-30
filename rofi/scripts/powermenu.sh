#!/usr/bin/env bash

shutdown=$'\uf011'
reboot=$'\uf2f1'
lock=$'\uf023'
logout=$'\uf2f5'
suspend=$'\uf186'

options="$shutdown\n$reboot\n$lock\n$logout\n$suspend"

selected=$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/powermenu.rasi)

case "$selected" in
    "$shutdown") systemctl poweroff ;;
    "$reboot") systemctl reboot ;;
    "$lock") hyprlock ;;
    "$logout") hyprctl dispatch exit ;;
    "$suspend") systemctl suspend ;;
    *) exit 0 ;;
esac
