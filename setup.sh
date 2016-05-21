#!/bin/bash

dotfile_dir="$HOME/dotfiles"
flags="-s"

ln $flags "${dotfile_dir}/.config/openbox" "$HOME/.config/openbox"
ln $flags "${dotfile_dir}/.config/tint2" "$HOME/.config/tint2"
ln $flags "${dotfile_dir}/.config/neofetch" "$HOME/.config/neofetch"
ln $flags "${dotfile_dir}/.mpd" "$HOME/.mpd"
ln $flags "${dotfile_dir}/.ncmpcpp" "$HOME/.ncmpcpp"

cp $flags "${dotfile_dir}"/.* "$HOME"

mkdir -p "$HOME/.themes"
ln $flags "${dotfile_dir}/themes/yellow" "$HOME/.themes"
