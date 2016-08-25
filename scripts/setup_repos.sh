#!/bin/bash

sudo apt-add-repository -y ppa:thomas-schiex/blender
sudo apt-add-repository -y ppa:mystic-mirage/pycharm
sudo apt-add-repository -y ppa:starws-box/deadbeef-player
sudo apt-add-repository -y ppa:dawidd0811/neofetch
sudo add-apt-repository -y ppa:atareao/telegram
sudo apt-add-repository -y ppa:snwh/pulp

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
rm -f Release.key

sudo apt update -y
