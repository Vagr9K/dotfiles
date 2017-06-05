#!/usr/bin/env zsh
printf "${Green}Insatlling Vim preferences.${Red}\n"
printf "${Yellow}Symlinking .vimrc.${Red}\n"
ln -s "$HOME/.dotfiles/vim/vimrc" "$HOME/.vimrc"

printf "${Yellow}Symlinking .vim folder.${Red}\n"
ln -s "$HOME/.dotfiles/vim" "$HOME/.vim"

#Update submodule repositories
echo "Installing plugins."
git submodule update --init --recursive