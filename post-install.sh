#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Updating system repositories..."
sudo pacman -Syu --noconfirm

echo "Installing core applications..."
PACKAGES=(
  "zsh"
  "curl"
  "neovim"
  "tmux"
  "ghostty"
  "chromium"
  "rofi"
  "hyprlock"
  "hypridle"
  "hyprshot"
  "waybar"
  "tailscale"
  "bluetui"
  "nmrs"
  "tlp"
  "brightnessctl"
  "fastfetch"
  "ttf-jetbrains-mono-nerd"
  "obsidian"
  "pulseaudio"
  "btop"
  "htop"
)

sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"

echo "Enabling background services..."
sudo systemctl enable --now ufw.service

echo "Changing shell to ZSH..."
sudo chsh -s $(which zsh)

echo $SHELL
echo "Shell is now ZSH!"

echo "Installing Oh-My-ZSH..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Oh-My-ZSH instlled!"

echo "All packages installed perfectly!"
