./scripts/autoremove.sh
./scripts/setup_repos.sh
./scripts/install_packages.sh
./scripts/setup_github.sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.Xresources ~/.Xresources
ln -sfn ~/dotfiles/.config/openbox ~/.config/openbox
ln -sfn ~/dotfiles/.config/i3 ~/.config/i3
ln -sfn ~/dotfiles/themes/yellow ~/.themes/yellow
ln -sfn ~/dotfiles/themes/2simple-dark ~/.themes/2simple-dark

xrdb ~/.Xresources
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --racer-completer

chsh -s $(which zsh)
gsettings set org.mate.background show-desktop-icons false
