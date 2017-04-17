#!/usr/bin/env sh
InitLink="$HOME/.gdbinit"
InitPath="$HOME/.dotfiles/gdb/.gdbinit"
printf "${Green}Symlinking .gdbinit.${Red}\n"
ln -s "$InitPath" "$InitLink"
