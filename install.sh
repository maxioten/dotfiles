#!/bin/bash

echo "🚀 Instalando dotfiles..."

# Crear carpetas necesarias
mkdir -p ~/.config

echo "📂 Copiando configs..."

cp -r ~/dotfiles/hypr ~/.config/
cp -r ~/dotfiles/hyprlock ~/.config/
cp -r ~/dotfiles/hypridle ~/.config/
cp -r ~/dotfiles/kitty ~/.config/
cp -r ~/dotfiles/waybar ~/.config/
cp -r ~/dotfiles/wofi ~/.config/
cp -r ~/dotfiles/wlogout ~/.config/
cp -r ~/dotfiles/fastfetch ~/.config/

cp ~/dotfiles/.bashrc ~/

echo "✅ Configs instaladas"

# -------------------------
# Instalar paquetes
# -------------------------

echo "📦 Instalando paquetes..."

sudo pacman -S --needed \
    hyprland \
    hyprlock \
    hypridle \
    hyprpaper \
    kitty \
    waybar \
    wofi \
    wlogout \
    fastfetch \
    mpd \
    mpc \
    ncmpcpp \
    blueman \
    nano \
    archlinux-xdg-menu \
    pipewire \
    wireplumber \
    xdg-desktop-portal-hyprland

# -------------------------
# Fuentes
# -------------------------

echo "🎨 Instalando fuentes..."

sudo pacman -S --needed \
    ttf-jetbrains-mono-nerd

# -------------------------
# Bluetooth
# -------------------------

sudo systemctl enable bluetooth
sudo systemctl start bluetooth

echo "🔥 Listo."
echo "👉 Reiniciá la PC y ejecutá Hyprland."
