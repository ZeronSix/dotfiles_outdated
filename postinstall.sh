#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y
 
./scripts/mint_autoremove.sh
./scripts/setup_ppa.sh
./scripts/setup_programs.sh
./scripts/setup_symlinks.sh

xrdb ~/.Xresources
~/.vim/bundle/YouCompleteMe/install.py --clang-completer --racer-completer
