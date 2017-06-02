#!/usr/bin/env zsh
printf "${Green}Installing zsh preferences.\n"
ConfigFolder="$HOME/.dotfiles/zsh"
EnvPath="$ConfigFolder/.zshenv"
EnvLink="$HOME/.zshenv"

#Set custom zsh configuration directory
printf "${Yellow}Symlinking .zshenv.${Red}\n"
ln -sf "$EnvPath" "$EnvLink"
