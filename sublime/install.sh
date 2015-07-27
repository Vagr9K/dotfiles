#!/usr/bin/env zsh
printf "${Green}Installing Sublime's preferences.${Red}\n"
ln -s ".dotfiles/sublime" "$HOME/.config/sublime-text-3/Packages/User"

