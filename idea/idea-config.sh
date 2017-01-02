#!/usr/bin/env zsh

function Install()
{
colorfolder="$HOME/.dotfiles/idea/colors"
declare -a arr=("WebStorm" "PyCharm" "CLion")
for i in "${arr[@]}"
do
    mainpath=$(find ~/ -maxdepth 1 -type d -name ".$i*" -print -quit)
    if [[ ! -z "${mainpath// }" ]]; then
        echo "Installing to $mainpath"
        newpath="$mainpath/config/colors"
        rm -rf "$newpath"
        ln -s "$colorfolder" "$newpath"
    fi
done
}

function PrintError()
{
	echo "Usage: idea-config.sh command"
	echo "install - Install config files."
}

if [ "$#" -eq 1 ]
then
    if [ "$1" = "install" ]
    then
        Install
    else
        PrintError
    fi
else
    PrintError
fi
