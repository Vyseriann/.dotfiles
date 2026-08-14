#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Setting STOW core application configs..."
stow nvim
stow hypr
stow ghostty
stow waybar
stow fastfetch

echo "Updating system repositories..."
sudo pacman -Syu --noconfirm

echo "Installing core applications..."
PACKAGES=(
  "curl"
  "neovim"
  "tmux"
  "ghostty"
  "chromium"
  "rofi"
  "hyprlock"
  "hypridle"
  "hyprshot"
  "hyprpicker"
  "hyprpolkitagent"
  "waybar"
  "tailscale"
  "bluetui"
  "NetWorkManager"
  "tlp"
  "brightnessctl"
  "fastfetch"
  "ttf-jetbrains-mono-nerd"
  "obsidian"
  "pulseaudio"
  "btop"
  "htop"
  "pipewire"
  "pavucontrol"
  "nano"
  "base"
  "base-devel"
  "networkmanager"
  "swaync"
  "yay"
  "zsh"
  "zsh-autocomplete"
  "zsh-autosuggestions"
  "zsh-completions"
  "starship"
  "telegram-desktop"
  "onlyoffice"
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

echo "Setting starship preset..."
starship preset gruvbox-rainbow -o ~/.config/starship.toml

echo "All packages installed perfectly!"
