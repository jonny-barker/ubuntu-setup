#! /bin/bash

# Install packages
sudo apt-get update
sudo apt-get install -y package1 package2

# Create a new directory
mkdir ~/new_directory

# Download a file from a URL
curl -o ~/file.txt https://example.com/file.txt

# Modify a configuration file
sudo sed -i 's/old_value/new_value/g' /etc/config.conf