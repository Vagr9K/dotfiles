#!/usr/bin/zsh

if [ -z "$1" ]
then
    tmuxinator start base
else
    if [ "$1"="guake" ]
    then
        sleep 1
        guake -r "Base" -e " tmuxinator start base && clear"
    fi
fi
exit 0

