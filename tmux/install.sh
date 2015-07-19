#!/usr/bin/env sh
TmuxLink="$HOME/.tmux.conf"
TmuxPath="$HOME/.dotfiles/tmux/tmux.conf"
echo "Symlinking .tmux.conf"
ln -s "$TmuxPath" "$TmuxLink"
