#!/usr/bin/env zsh

#Check apm type.
apmbeta="apm-beta"
apm="apm"
if hash "$apmbeta" &>/dev/null; then
    apm=$(which "$apmbeta")
    echo "Using apm-beta."
else
    apm=$(which "$apm")
    echo "Using apm."
fi

function SavePkglist(){
    "$apm" list --installed --bare > "$HOME/.dotfiles/atom/pkglist"
    echo "Saved package list."
}

function InstallPkglist(){
    echo "Installing from package list."
    "$apm" install --packages-file "$HOME/.dotfiles/atom/pkglist"
}

function PrintError(){
    echo "Invalid arguments passed. Use -s (save) os -i (install) flags."
}

function DisableMetrics(){
    echo "Disabling metrics."
    "$apm" disable metrics
}

if [ "$#" -eq 1 ]
then
    if [ "$1" = "-s" ]
    then
        SavePkglist
    elif [ "$1" = "-i" ]
    then
        InstallPkglist
        DisableMetrics
    else
        PrintError
    fi
else
    PrintError
fi
