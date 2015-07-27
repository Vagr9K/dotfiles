#!/usr/bin/env sh
TmuxLink="$HOME/.tmux.conf"
TmuxPath="$HOME/.dotfiles/tmux/tmux.conf"
printf "${Green}Symlinking .tmux.conf.${Red}\n"
ln -s "$TmuxPath" "$TmuxLink"
