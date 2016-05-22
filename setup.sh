#!/bin/bash

dotfile_dir="$HOME/dotfiles"
flags="-s"

ln $flags "${dotfile_dir}/.config/openbox" "$HOME/.config/"
ln $flags "${dotfile_dir}/.config/tint2" "$HOME/.config/"
ln $flags "${dotfile_dir}/.config/neofetch" "$HOME/.config/"
ln $flags "${dotfile_dir}/.mpd" "$HOME/"
ln $flags "${dotfile_dir}/.ncmpcpp" "$HOME/"

cp $flags "${dotfile_dir}"/.* "$HOME"

mkdir -p "$HOME/.themes"
ln $flags "${dotfile_dir}/themes/yellow" "$HOME/.themes"
