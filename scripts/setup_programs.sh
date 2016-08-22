#!/bin/bash

sudo apt install -y rxvt-unicode zsh blender pycharm-community \
paper-icon-theme deadbeef mpv vim-gtk3 curl fonts-hack-ttf rofi neofetch \
build-essential cmake python-dev python3-dev steam ttf-mscorefonts-installer \
dropbox libcairo2-dev libpango1.0-dev libconfig-dev libxcb-randr0-dev \
libxcb-ewmh-dev libgdk-pixbuf2.0-dev openbox obconf obmenu lxappearance \
fonts-cantarell libx11-xcb-dev libxcb-xinerama0-dev feh dunst exuberant-ctags \
telegram

curl -sSf https://static.rust-lang.org/rustup.sh | sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 
git clone https://github.com/rust-lang/rust.git ~/.rust
git clone https://github.com/krypt-n/bar.git ~/src/bar
git clone https://github.com/xyl0n/iris.git ~/.themes
git clone https://github.com/powerline/fonts.git ~/src/themes

# Build lemonbar
cd ~/src/bar
make
sudo make install

# Install Powerline fonts
cd ~/src/fonts
./install.sh
