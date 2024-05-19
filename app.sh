#!/bin/bash

# install preload
sudo apt install preload

# install Postman
sudo snap install postman

# Install Flatpak if not already installed
sudo apt install -y flatpak

# Add the Flathub repository
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Telegram
sudo flatpak install -y flathub org.telegram.desktop

# Install Discord
sudo flatpak install -y flathub com.discordapp.Discord

# Install VSCode
sudo flatpak install -y flathub com.visualstudio.code

# Install Google Chrome
sudo flatpak install -y flathub com.google.Chrome

# install warp
wget https://releases.warp.dev/stable/v0.2024.05.14.08.01.stable_04/warp-terminal_0.2024.05.14.08.01.stable.04_amd64.deb
sudo dpkg -i warp-terminal_0.2024.05.14.08.01.stable.04_amd64.deb

# Install Ulauncher
sudo apt update && sudo apt install -y gnupg
gpg --keyserver keyserver.ubuntu.com --recv 0xfaf1020699503176
gpg --export 0xfaf1020699503176 | sudo tee /usr/share/keyrings/ulauncher-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/ulauncher-archive-keyring.gpg] \
          http://ppa.launchpad.net/agornostal/ulauncher/ubuntu jammy main" \
          | sudo tee /etc/apt/sources.list.d/ulauncher-jammy.list
sudo apt update && sudo apt install ulauncher

sudo add-apt-repository universe -y && sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update && sudo apt install ulauncher



# Remove Mozilla Firefox
sudo apt purge firefox
# Remove configuration files
sudo rm -rf ~/.mozilla
# Remove any remaining dependencies
sudo apt autoremove --purge
