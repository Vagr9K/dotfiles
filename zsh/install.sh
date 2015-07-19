#!/usr/bin/env zsh
BasePath="${DOTFILESPATH:=".dotfiles/"}"
ConfigFolder="$HOME/$BasePath/zsh"
EnvPath="$ConfigFolder/.zshenv"
EnvLink="$HOME/.zshenv"
ModifyPath="$ConfigFolder/prezto_mods/modify.sh"
#Update prezto
echo "Updating prezto."
cd "$ConfigFolder/.zprezto/"
git pull && git submodule update --init --recursive
#Check if any prezto modifications exist and apply them
if [ -e "$ModifyPath" ]
then
    echo "Applying modifications."
     ./"$ModifyPath"
fi
#Set custom zsh configuration directory
echo "Symlinking .zshenv"
ln -sf "$EnvPath" "$EnvLink"

