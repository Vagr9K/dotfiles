#!/usr/bin/env bash
printf "${Green}Installing bash preferences.\n"
ConfigFolder="$HOME/.dotfiles/bash"
EnvPath="$ConfigFolder/.bash_profile"
EnvLink="$HOME/.bash_profile"
RCPath="$ConfigFolder/bashrc"
RCLink="$HOME/.bashrc"

#Set .bash_profile
printf "${Yellow}Symlinking .bash_profile.${Red}\n"
rm "$EnvLink"
ln -sf "$EnvPath" "$EnvLink"

#Set .bashrc
printf "${Yellow}Symlinking .bashrc.${Red}\n"
rm "$RCLink"
ln -sf "$RCPath" "$RCLink"
