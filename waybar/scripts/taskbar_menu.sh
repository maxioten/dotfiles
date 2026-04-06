#!/bin/bash

# Si app_id está vacío, le asignamos un valor por defecto para que no falle pkill
APP_ID=${1:-"unknown"}

opciones="Fullscreen (Toggle)\nCerrar ventana\nMatar proceso (pkill)"

elegido=$(echo -e "$opciones" | wofi --dmenu --width 200 --height 180 --prompt "Acción")

case $elegido in
    "Fullscreen (Toggle)")
        hyprctl dispatch fullscreen 0
        ;;
    "Cerrar ventana")
        hyprctl dispatch killactive ""
        ;;
    "Matar proceso (pkill)")
        if [ "$APP_ID" != "unknown" ]; then
            pkill "$APP_ID"
        fi
        ;;
esac
