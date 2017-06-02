#!/usr/bin/env zsh
printf "${Green}Installing root zsh preferences.\n"
ConfigFolder="$HOME/.dotfiles/zsh-root"
EnvPath="$ConfigFolder/.zshenv"
EnvLink="/root/.zshenv"
#
#Set custom zsh configuration directory
printf "${Yellow}Symlinking root .zshenv.${Red}\n"
sudo ln -sf "$EnvPath" "$EnvLink"

