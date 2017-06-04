#!/usr/bin/env zsh
printf "${Green}Installing zsh preferences.\n"
ConfigFolder="$HOME/.dotfiles/zsh"
EnvPath="$ConfigFolder/.zshenv"
EnvLink="$HOME/.zshenv"
#Install antigen
echo "Installing antigen."
git clone --recursive https://github.com/zsh-users/antigen.git "$HOME/.dotfiles/zsh/antigen"

#Set custom zsh configuration directory
printf "${Yellow}Symlinking .zshenv.${Red}\n"
ln -sf "$EnvPath" "$EnvLink"
