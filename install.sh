```bash
#!/bin/bash

echo "[*] Desplegando configuraciones del Rice v1.0..."

# Crear directorios de configuración si no existen
mkdir -p ~/.config/hypr
mkdir -p ~/.config/kitty
mkdir -p ~/.config/matugen/templates
mkdir -p ~/.config/scripts

# Copiar archivos desde el repositorio clonado
cp -r dotfiles/hypr/* ~/.config/hypr/
cp -r dotfiles/kitty/* ~/.config/kitty/
cp -r dotfiles/matugen/* ~/.config/matugen/
cp -r dotfiles/scripts/* ~/.config/scripts/

# Dar permisos de ejecución a los scripts
chmod +x ~/.config/scripts/*.sh

echo "[+] ¡Instalación completada con éxito! Reinicia tu sesión de Hyprland para aplicar los cambios."
