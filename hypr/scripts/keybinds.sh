#!/bin/bash

echo -e "
󰆍  APPS Y SISTEMA
SUPER + A → Abrir Wofi
SUPER + T → Terminal (Kitty)
SUPER + E → Dolphin
SUPER + D → Discord
SUPER + W → WhatsApp
SUPER + B → Helium
SUPER + Y → Youtube
SUPER + U → Eva Undelar
SUPER + S → WhatsApp
SUPER + H → Mangayomi

󰍹  VENTANAS
SUPER + Q → Cerrar ventana
SUPER + F → Fullscreen
SUPER + Mouse1 → Mover ventana
SUPER + Mouse2 → Redimensionar ventana

󰖲  WORKSPACES
SUPER + 1-9 → Cambiar workspace
SUPER + SHIFT + 1-9 → Mover ventana al workspace
SUPER + ALT + 1-9 → Mover silenciosamente
SUPER + SHIFT + Scroll → Cambiar ventana de workspace

󰕾  MUSICA Y AUDIO
SUPER + O → Play música
SUPER + X → Stop música
SUPER + SPACE → Pausar/Reanudar
SUPER + LEFT → Canción anterior
SUPER + RIGHT → Siguiente canción
SUPER + N → Reproducir toda la carpeta

SUPER + UP → Subir volumen
SUPER + DOWN → Bajar volumen
SUPER + M → Mutear

󰄀  UTILIDADES
SUPER + P → Screenshot selección
SUPER + SHIFT + W → Reiniciar Waybar

󰩈  SESION
SUPER + SHIFT + M → Salir de Hyprland
" | wofi --dmenu \
    --width 850 \
    --height 700 \
    --prompt "Hyprland Keybinds"
