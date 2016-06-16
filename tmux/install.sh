#!/usr/bin/env sh
TmuxLink="$HOME/.tmux.conf"
TmuxPath="$HOME/.dotfiles/tmux/tmux.conf"
printf "${Green}Symlinking .tmux.conf.${Red}\n"
ln -s "$TmuxPath" "$TmuxLink"

printf "${Green}Symlinking base.yml.${Red}\n"
BaseLink="$HOME/.tmuxinator/base.yml"
BasePath="$HOME/.dotfiles/tmux/tmuxinator/base.yml"
mkdir "$HOME/.tmuxinator"
ln -s "$BasePath" "$BaseLink"

