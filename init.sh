#!usr/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install -y \
     git \
     tmux \
     zsh \
     zsh-syntax-highlighting \
     curl \
     tree \
     wget \
     tasksel \
     openssh-server \
     vim \
     python-pip \
     network-manager

chsh -s /usr/bin/zsh
#git clone https://github.com/keyakko/common-settings
cd ~/git/common-settings/
cp .zshrc ~/.zshrc

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
gsettings set org.gnome.desktop.interface monospace-font-name 'Source Code Pro for Powerline 13'
pip install --user powerline-shell
