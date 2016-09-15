#!/bin/bash

# INSTALL SUDO BEFORE RUNNING THIS SCRIPT

# Setup packages
sudo apt autoremove
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt install -y zsh blender mpv vim-gtk3 curl build-essential cmake python-dev \
python3-dev ttf-mscorefonts-installer fonts-roboto fonts-powerline exuberant-ctags \
zathura zathura-djvu autoconf automake autotools-dev git
e
curl -sSf https://static.rust-lang.org/rustup.sh | sh

# Setup Git repos
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

# Arc theme
wget http://download.opensuse.org/repositories/home:Horst3180/Debian_8.0/Release.key
sudo apt-key add - < Release.key
sudo apt-get update
rm -f Release.key

# Powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/Debian_8.0/ /' >> /etc/apt/sources.list.d/arc-theme.list 
sudo apt-get update -y
sudo apt-get install arc-theme -y

echo "deb http://dl.bintray.com/dawidd6/neofetch stretch main" | sudo tee -a /etc/apt/sources.list
curl -L "https://bintray.com/user/downloadSubjectPublicKey?username=bintray" -o Release-neofetch.key && sudo sudo apt-key add Release-neofetch.key && rm Release-neofetch.key

sudo apt update -y
sudo apt install neofetch

# Setup symlinks
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.Xresources ~/.Xresources

xrdb ~/.Xresources
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --racer-completer

chsh -s $(which zsh)

gsettings set org.gnome.nautilus.preferences default-folder-viewer "list-view"
gsettings set org.gnome.nautilus.preferences sort-directories-first "true"
gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'type', 'date_modified']"
gsettings set org.gnome.nautilus.list-view default-zoom-level "small"
