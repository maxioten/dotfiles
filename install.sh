#!/bin/bash

echo "🚀 Instalando dotfiles..."

# Crear carpeta config si no existe
mkdir -p ~/.config

# Symlinks (recomendado)
ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/wofi ~/.config/wofi
ln -sf ~/dotfiles/fastfetch ~/.config/fastfetch

ln -sf ~/dotfiles/.bashrc ~/.bashrc

echo "✅ Configs instaladas"

# Instalar paquetes básicos (Arch)
echo "📦 Instalando paquetes..."
sudo pacman -S --needed hyprland kitty waybar wofi mpd mpc ncmpcpp

echo "🎨 Instalando fuentes..."
sudo pacman -S --needed ttf-jetbrains-mono-nerd

sudo pacman -S --needed fastfetch

sudo pacman -S --needed archlinux-xdg-menu

echo "🔥 Listo. Reiniciá Hyprland."
