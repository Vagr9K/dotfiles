#!/usr/bin/env zsh

pkglist="$HOME/.dotfiles/vscode/pkglist"

#Check vscode type.
codeinsiders="code-insiders"
code="code"
if hash "$codeinsiders" &>/dev/null; then
    code=$(which "$codeinsiders")
    echo "Using code-insiders."
else
    code=$(which "$code")
    echo "Using code."
fi

function SavePkglist(){
    "$code" --list-extensions > "$pkglist"
    echo "Saved package list."
}

function InstallPkglist(){
    echo "Installing from package list."
    while read line; do
        "$code" --install-extension "$line"
    done <"$pkglist"
}

function PrintError(){
    echo "Invalid arguments passed. Use -s (save) os -i (install) flags."
}

if [ "$#" -eq 1 ]
then
    if [ "$1" = "-s" ]
    then
        SavePkglist
    elif [ "$1" = "-i" ]
    then
        InstallPkglist
    else
        PrintError
    fi
else
    PrintError
fi
