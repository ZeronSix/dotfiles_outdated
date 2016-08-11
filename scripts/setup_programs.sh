#!/bin/bash

sudo apt install -y rxvt-unicode zsh blender pycharm-community paper-icon-theme deadbeef mpv vim-gtk3 nvidia-361 curl fonts-hack-ttf rofi neofetch build-essential cmake python-dev python3-dev steam ttf-mscorefonts-installer dropbox libcairo2-dev libpango1.0-dev libconfig-dev libxcb-randr0-dev libxcb-ewmh-dev libgdk-pixbuf2.0-dev

curl -sSf https://static.rust-lang.org/rustup.sh | sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 
git clone https://github.com/rust-lang/rust.git ~/.rust
