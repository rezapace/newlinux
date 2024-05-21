#!/bin/bash



# Install dependencies
sudo apt-get update

sudo apt install rofi

mkdir -p ~/github
cd ~/github
git clone https://github.com/rezapace/newlinux
cd newlinux
mkdir -p ~/.config/rofi
cp /github/newlinux/rofi/config.rasi ~/.config/rofi/

echo "set keybinding for rofi rofi | rofi -show drun | ctrl+space"

# # Download the Rofi archive
# wget https://objects.githubusercontent.com/github-production-release-asset-2e65be/7715820/ab074652-af2b-4e4b-8de4-5ee1d2d6f900?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240520%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240520T105912Z&X-Amz-Expires=300&X-Amz-Signature=42f545675ac6d8401b9da90566d3722f1bf6a2af1013f08c48b20bc4197faa69&X-Amz-SignedHeaders=host&actor_id=97022190&key_id=0&repo_id=7715820&response-content-disposition=attachment%3B%20filename%3Drofi-1.7.5.tar.gz&response-content-type=application%2Foctet-stream -O rofi-1.7.5.tar.gz

# # Extract the archive
# tar -xvf rofi-1.7.5.tar.gz

# # Change into the extracted directory
# cd rofi-1.7.5

# sudo apt-get install -y build-essential libgtk-3-dev
# sudo apt-get install -y libxcb-util-dev libxcb-xkb-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-cursor-dev libxcb-randr0-dev libxcb-xinerama0-dev
# sudo apt-get install -y libstartup-notification0-dev
# sudo apt-get install -y check

# # Configure and build Rofi
# ./configure
# make && sudo make install

# # Run Rofi
# rofi -show drun

# # menambahkan keybindings untuk rofi
# name="rofi"
# path="/org/mate/desktop/keybindings/custom0/"
# binding="<Control>space"
# command="rofi -show drun"

# # Check if dconf is installed, otherwise install it
# if ! command -v dconf &> /dev/null; then
#     echo "dconf is not installed. Installing..."
#     sudo apt-get update
#     sudo apt-get install dconf-cli
# fi

# # Create the custom keybinding
# dconf write ${path}name "'$name'"
# dconf write ${path}binding "'$binding'"
# dconf write ${path}command "'$command'"

# # Retrieve the list of custom keybindings
# existing_keybindings=$(dconf read /org/mate/desktop/keybindings/custom-list)

# # Add the new keybinding path if it's not already in the list
# if [[ "$existing_keybindings" != *"$path"* ]]; then
#     if [[ "$existing_keybindings" == "[]" || "$existing_keybindings" == "" ]]; then
#         new_keybindings="['$path']"
#     else
#         new_keybindings=$(echo "$existing_keybindings" | sed -e "s/]$/,'$path']/")
#     fi
#     dconf write /org/mate/desktop/keybindings/custom-list "$new_keybindings"
# fi

# echo "Keybinding for '$name' set to '$binding' to execute '$command'."

# after that search keybinding
# and set the keybinding to open rofi
# rofi | rofi -show drun | ctrl+space