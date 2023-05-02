#!/bin/bash

# Update system
sudo apt-get update
sudo apt-get upgrade

# Install software
sudo apt-get install zsh qbittorrent terminator curl 

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Visual Studio Code
sudo apt-get install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update
sudo apt-get install code

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install ./google-chrome-stable_current_amd64.deb

# Install Vim and NeoVim
sudo apt-get install vim
sudo snap install --beta nvim --classic

# Install Windscribe
wget https://windscribe.com/install/desktop/linux_deb_x64
sudo dpkg -i ./Downloads/windscribe.com/install/desktop/linux_deb_x64

# snap store
sudo snap install insomnia mailspring spotify bitwarden

# Install Startup Disc Creator
sudo apt-get install usb-creator-gtk

#config files below 
