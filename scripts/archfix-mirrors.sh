#!/bin/zsh

NewMirror="/etc/pacman.d/mirrorlist.pacnew"
CurrentMirror="/etc/pacman.d/mirrorlist"
BakMirror="/etc/pacman.d/mirrorlist.bak"

if [ -f $NewMirror ]
then
    sudo /bin/cp -rf "$NewMirror" "$BakMirror"
else
    sudo /bin/cp -rf "$CurrentMirror" "$BakMirror"
fi

sudo sed -i 's/^#Server/Server/' "$BakMirror"

echo "Ranking mirrors..."
sudo rankmirrors -n 10 "$BakMirror" | sudo tee "$CurrentMirror"

echo "Forcing package list refresh"
sudo pacman -Syyu

