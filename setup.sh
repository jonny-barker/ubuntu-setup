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
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7
echo 'deb https://repo.windscribe.com/ubuntu bionic main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list
sudo apt-get update
sudo apt-get install windscribe-cli

# snap store
sudo snap install insomnia mailspring spotify

# Install Startup Disc Creator
sudo apt-get install usb-creator-gtk

# Config files
# Dock orientation
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'

# Keyboard remap
# Example: map Caps Lock to Control
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier']"

# Keyboard shortcuts
# Example: set shortcut for opening Terminal to Ctrl+Alt+T
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "<Ctrl><Alt>t"

# Privacy settings
# Example: disable usage data collection
gsettings set org.gnome.usage-analytics allow-report false
