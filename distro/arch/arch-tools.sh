#!/usr/bin/env bash

function RankMirrors()
{
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
}

function ListABIPakagesCPP()
{
	while read pkg; do
      	  mapfile -t files < <(pacman -Qlq $pkg | grep -v /$)
         	   grep -Fq libstdc++.so.6 "${files[@]}" <&- 2>/dev/null && echo $pkg
	done < <(pacman -Qmq)
}

function ListChangedConfig()
{
	sudo pacman -Qii | awk '/^MODIFIED/ {print $2}'
}

function ListMismatchingHashes()
{
	if hash paccheck &>/dev/null; then
		sudo paccheck --md5sum --quiet
	else
		echo "paccheck not installed. pacutils AUR package is needed."
	fi

}

function ListPacFiles()
{
	if hash locate &>/dev/null; then
		echo "Using locate."
		sudo updatedb
		locate --existing --regex "\.pac(new|save)$"
	else
		echo "Using find."
		find / -regextype posix-extended -regex ".+\.pac(new|save)" 2> /dev/null
	fi
} 

function PrintError()
{
	echo "Usage: arch-tools command"
	echo "rankmirrors    - Rerank pacman mirrors."
	echo "abicpp         - List packages that use the old C++ ABI."
	echo "configchanges  - List changed configuration files."
	echo "pkgfilechanges - List changed package files."
	echo "pacfiles       - List *.pacnew and *.pacsave files."
}

if [ "$#" -eq 1 ]
then
    if [ "$1" = "rankmirrors" ]
    then
        RankMirrors
    elif [ "$1" = "abicpp" ]
    then
        ListABIPakagesCPP
    elif [ "$1" = "configchanges" ]
    then
    	ListChangedConfig
    elif [ "$1" = "pkgfilechanges" ]
    then
    	ListMismatchingHashes
    elif [ "$1" = "pacfiles" ]
    then
    	ListPacFiles
    else
        PrintError
    fi
else
    PrintError
fi