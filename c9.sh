#!/bin/bash

# Update and install dependencies
sudo apt-get update && sudo apt-get -y install curl git build-essential
sudo apt-get install python
sudo apt-get install nodejs
sudo apt-get install libapache2-mod-php7.2 php7.2 php7.2-common

# Clone Cloud9 repository
git clone https://github.com/c9/core.git c9sdk

# Change directory to c9sdk
cd c9sdk

# Run installation script
scripts/install-sdk.sh

# Run Cloud9 server
screen -r -d c9
node server.js -p 8080 -l 0.0.0.0 -a kumal:gacor@123
