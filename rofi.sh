#!/bin/bash

# Install dependencies
sudo apt-get update

# Download the Rofi archive
wget https://objects.githubusercontent.com/github-production-release-asset-2e65be/7715820/ab074652-af2b-4e4b-8de4-5ee1d2d6f900?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240520%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240520T105912Z&X-Amz-Expires=300&X-Amz-Signature=42f545675ac6d8401b9da90566d3722f1bf6a2af1013f08c48b20bc4197faa69&X-Amz-SignedHeaders=host&actor_id=97022190&key_id=0&repo_id=7715820&response-content-disposition=attachment%3B%20filename%3Drofi-1.7.5.tar.gz&response-content-type=application%2Foctet-stream -O rofi-1.7.5.tar.gz

# Extract the archive
tar -xvf rofi-1.7.5.tar.gz

# Change into the extracted directory
cd rofi-1.7.5

sudo apt-get install -y build-essential libgtk-3-dev
sudo apt-get install -y libxcb-util-dev libxcb-xkb-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-cursor-dev libxcb-randr0-dev libxcb-xinerama0-dev
sudo apt-get install -y libstartup-notification0-dev
sudo apt-get install -y check

# Configure and build Rofi
./configure
make && sudo make install

# Run Rofi
rofi -show drun


# after that search keybinding
# and set the keybinding to open rofi
# rofi | rofi -show drun | ctrl+space