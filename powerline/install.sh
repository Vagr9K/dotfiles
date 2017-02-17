#!/usr/bin/env zsh

# Install powerline
sudo pacman -S --noconfirm powerline

# Install Powerline settings.
printf "${Green}Installing Powerline settings.${Red}\n"
echo "${Yellow}Do you wish to remove Powerline settings folder?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) rm -rf "$HOME/.config/powerline"; break;;
        No ) exit;;
    esac
done
ln -s "$HOME/.dotfiles/powerline/config" "$HOME/.config/powerline"

# Update links
source "$HOME/.dotfiles/powerline/update-powerline-links.sh"
