#!/bin/bash

players=$(playerctl -l 2>/dev/null)

for p in $players; do
    status=$(playerctl -p "$p" status 2>/dev/null)

    if [ "$status" = "Playing" ]; then
        hyprlock -c ~/.config/hypr/hyprlock-music.conf
        exit 0
    fi
done

hyprlock -c ~/.config/hypr/hyprlock-normal.conf
