#!/usr/bin/env sh
GitLink="$HOME/.gitconfig"
GitPath="$HOME/.dotfiles/git/gitconfig"
printf "${Green}Symlinking .gitconfig.${Red}\n"
ln -s "$GitPath" "$GitLink"
