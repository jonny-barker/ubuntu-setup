#!/bin/bash

# Update system
sudo apt-get update
sudo apt-get upgrade

# Install core software
sudo apt-get install git zsh qbittorrent terminator curl postgresql postgresql-contrib

#create bash profile
touch ~/.bash_profile

#install node version manager and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash && source ~/.nvm/nvm.sh
nvm install node
nvm use node

#create postgres user
sudo -u postgres createuser --superuser $USER && sudo -u postgres createdb $USER 

#store git credentials on computer
git config --global credential.helper store

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
