#!/usr/bin/env sh
GitLink="$HOME/.gitconfig"
GitPath="$HOME/.dotfiles/git/gitconfig"
echo "Symlinking .gitconfig"
ln -s "$GitPath" "$GitLink"
