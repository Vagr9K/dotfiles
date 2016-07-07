#!/usr/bin/env zsh
printf "${Green}Installing zsh preferences.\n"
ConfigFolder="$HOME/.dotfiles/zsh"
EnvPath="$ConfigFolder/.zshenv"
EnvLink="$HOME/.zshenv"
ModifyPath="$ConfigFolder/prezto_mods/modify.sh"
#Install prezto
echo "Installing prezto."
git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.dotfiles/zsh/.zprezto"
#Update prezto
printf "${Yellow}Updating prezto.${Yellow}\n"
cd "$ConfigFolder/.zprezto/"
git pull origin master && git submodule update --init --recursive
#Check if any prezto modifications exist and apply them
if [ -e "$ModifyPath" ]
then
    printf "${Yellow}Applying modifications.${Red}\n"
    source "$ModifyPath"
fi
#Set custom zsh configuration directory
printf "${Yellow}Symlinking .zshenv.${Red}\n"
ln -sf "$EnvPath" "$EnvLink"
