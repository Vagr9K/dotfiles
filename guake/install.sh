#!/usr/bin/env zsh
printf "${Green}Installing Guake preferences.${Red}\n"
echo "${Yellow}Do you wish to remove Guake preferences folder?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) rm -rf "$HOME/.config/gconf/apps/guake"; break;;
        No ) exit;;
    esac
done
ln -s "$HOME/.dotfiles/guake" "$HOME/.config/gconf/apps/guake"

