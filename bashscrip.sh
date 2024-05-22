#!/bin/bash

# Create ~/github directory if it doesn't exist
[ -d ~/github ] && cd ~/github || mkdir ~/github && cd ~/github

# Clone the repository and change into the cloned directory
[ -d github/bash ] || git clone --recursive https://github.com/rezapace/bash && cd github/bash

# Change permissions and run the script
sudo chmod 775 github/bash/bash.sh && ./github/bash/bash.sh


