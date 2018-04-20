#!/bin/bash

sudo yum update -y
sudo yum upgrade -y

sudo yum install -y \
    git \
    tmux \
    zsh \
    curl \
    tree \
    wget \
    vim \
    python-pip \
    
#zshをログインシェルにしたい時は/etc/passwdの中にあるec2-userの行の/bin/bashを/bin/zshにする
#git clone https://github.com/bosan120/common-settings

touch .zshrc 
touch .vimrc
touch .tmux.conf

cd ~/common-settings/
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

cd ~
git clone https://github.com/powerline/fonts.git --depth=1
./install.sh
cd ..
rm -rf fonts
pip install --user powerline-shell
