#!/bin/bash
mkdir ~/git
cd ~/git

# Arc firefox theme
git clone https://github.com/horst3180/arc-firefox-theme
cd arc-firefox-theme
./autogen.sh --prefix=/usr
sudo make install
cd ~/git

# Arc icon theme
git clone https://github.com/horst3180/arc-icon-theme --depth 1
cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
cd ~/git

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

# Oh my zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 

# Rust source code
git clone https://github.com/rust-lang/rust.git

# Powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh


