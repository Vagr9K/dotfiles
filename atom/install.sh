#!/usr/bin/env zsh
printf "${Green}Installing Atom's preferences.${Red}\n"
echo "${Yellow}Do you wish to remove Atom preferences folder?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) rm -rf "$HOME/.atom"; break;;
        No ) exit;;
    esac
done
ln -s "$HOME/.dotfiles/atom" "$HOME/.atom"

