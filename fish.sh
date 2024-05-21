#!/bin/bash

# Ensure script is run as root
if [ "$(id -u)" != "0" ]; then
  echo "Please run this script as root"
  exit 1
fi

# Update and install dependencies
echo "Updating and installing dependencies..."
sudo apt-get update
sudo apt-get install curl git build-essential -y

# Clone the repository and change into the cloned directory
cd ~/github
git clone https://github.com/rezapace/newlinux

# Install Fish Shell
echo "Installing Fish Shell..."
sudo apt install curl -y
sudo apt-get install fish -y

# Create configuration files and directories
echo "Creating configuration files and directories..."
mkdir -p "$HOME/.config/fish"
touch "$HOME/.config/fish/functions/su.fish"
touch "$HOME/.config/fish/functions/fish_prompt.fish"

# Set permissions
echo "Setting permissions..."
chmod 700 ~/.config/fish/functions/su.fish
chmod 700 ~/.config/fish/config.fish
chmod 700 ~/.config/fish/functions/fish_prompt.fish

# Install plugins with Fish
echo "Installing plugins with Fish..."
sudo fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
sudo fish -c "fisher install jorgebucaran/nvm.fish"
sudo fish -c "fisher install jethrokuan/z"
sudo fish -c "fisher install takashabe/fish-peco"
sudo fish -c "fisher install edc/bass"
sudo fish -c "fisher install PatrickF1/fzf.fish"
sudo fish -c "fisher install simnalamburt/shellder"

# Install additional packages
echo "Installing additional packages..."
sudo apt install exa
sudo apt install peco
sudo apt install fzf
sudo apt install trash-cli

# Copy configuration file
echo "Copying configuration file..."
cp -i "$HOME/github/newlinux/fish/config.fish" "$HOME/.config/fish/"

echo "Script complete!"
