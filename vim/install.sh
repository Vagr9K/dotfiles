#!/usr/bin/env sh
BasePath="${DOTFILESPATH:=".dotfiles"}"
LinkPath="$HOME/.vimrc"
LinkSource="$HOME/$BasePath/vim/vimrc"
VimPath="$HOME/$BasePath/vim"
VimLink="$HOME/.vim"
echo "Symlinking .vimrc to $LinkSource"
ln -sf "$LinkSource" "$LinkPath"

echo "Symlinking $VimLink to $VimPath"
ln -sf "$VimPath" "$VimLink"
