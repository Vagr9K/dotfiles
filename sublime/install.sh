#!/usr/bin/env zsh
printf "${Green}Installing Sublime's preferences.${Red}\n"
echo "${Yellow}Do you wish to remove Sublime preferences folder?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) rm -rf "$HOME/.config/sublime-text-3/Packages/User"; break;;
        No ) exit;;
    esac
done
ln -s "$HOME/.dotfiles/sublime" "$HOME/.config/sublime-text-3/Packages/User"

