#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y build-essential libgtk-3-dev
sudo apt-get install -y libxcb-util-dev libxcb-xkb-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-cursor-dev libxcb-randr0-dev libxcb-xinerama0-dev
sudo apt-get install -y libstartup-notification0-dev
sudo apt-get install -y check

# Configure and build Rofi
./configure
make && sudo make install
