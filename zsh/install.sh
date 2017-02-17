#!/usr/bin/env zsh
printf "${Green}Installing zsh preferences.\n"
ConfigFolder="$HOME/.dotfiles/zsh"
EnvPath="$ConfigFolder/.zshenv"
EnvLink="$HOME/.zshenv"
#Install zplug
echo "Installing zplug."
git clone --recursive https://github.com/zplug/zplug.git "$HOME/.dotfiles/zsh/zplug"

#Set custom zsh configuration directory
printf "${Yellow}Symlinking .zshenv.${Red}\n"
ln -sf "$EnvPath" "$EnvLink"
