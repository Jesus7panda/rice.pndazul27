#!/bin/bash
# Matar procesos existentes
killall waybar eww cava

# Iniciar componentes clave
swww-daemon &
waybar &
nm-applet &
blueman-applet &

# Cargar el fondo de pantalla por defecto (reemplazar ruta en tu VM)
# swww img ~/Pictures/Wallpapers/pixel_art_u.gif

# Iniciar los widgets del Modo Showcase por defecto
~/.config/scripts/toggle_widgets.sh start
