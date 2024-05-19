#!/bin/bash

# Download the Composer installer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

# Run the installer
php composer-setup.php

# Move the composer.phar file to a directory in the system's PATH
sudo mv composer.phar /usr/local/bin/composer

# Make the composer executable
sudo chmod +x /usr/local/bin/composer

# Verify the installation
composer --version


# source: https://green.cloud/docs/how-to-install-laravel-9-on-ubuntu-22-04/