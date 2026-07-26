#!/bin/bash

# Verificar si eww está corriendo
if pidof eww > /dev/null; then
    # MODO TRABAJO: Ocultar todo
    eww close hud media
    killall eww
    killall cava
else
    # MODO SHOWCASE: Mostrar HUD, Reproductor y CAVA
    eww daemon
    eww open hud
    eww open media
    kitty --class="cava-bg" -e cava &
    
    # Hacer que la ventana de cava flote y se vaya al fondo en Hyprland
    hyprctl keyword windowrulev2 "float,class:^(cava-bg)$"
    hyprctl keyword windowrulev2 "pin,class:^(cava-bg)$"
    hyprctl keyword windowrulev2 "size 800 200,class:^(cava-bg)$"
    hyprctl keyword windowrulev2 "move 50% 100%-250,class:^(cava-bg)$"
fi
