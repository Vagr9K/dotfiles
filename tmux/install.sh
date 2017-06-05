#!/usr/bin/env sh
TmuxLink="$HOME/.tmux.conf"
TmuxPath="$HOME/.dotfiles/tmux/tmux.conf"
printf "${Green}Symlinking .tmux.conf.${Red}\n"
ln -s "$TmuxPath" "$TmuxLink"

#Update submodule repositories
echo "Installing plugins."
git submodule update --init --recursive

printf "${Green}Installing Tmuxinator's preferences.${Red}\n"
echo "${Yellow}Do you wish to remove Tmuxinator preferences folder?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) rm -rf "$HOME/.tmuxinator"; break;;
        No ) exit;;
    esac
done
ln -s "$HOME/.dotfiles/tmux/tmuxinator" "$HOME/.tmuxinator"
