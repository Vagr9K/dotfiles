#!/bin/bash
GDriveDir="GDrive/"
ForceCrypt=false
ForceUpload=false
Passwrd="ruben"
if [ $# == 2 ] 
then
    ForceCrypt=true
    if [ "$1" != "defpass" ]
    then
        Passwrd=$1
    fi
elif [ $# = 3 ] 
then
    ForceCrypt=true
    ForceUpload=true
    if [ "$1" != "defpass" ]
    then
        Passwrd=$1
    fi
    if [ "$2" != "yes" ]
    then
        GDriveDir=$2
    fi
fi
HOME=/home/ruben
CurDir=$(dirname "$0")
if [ "$CurDir" = "." ]
then
    CurDir=$(pwd)
fi
cd "$HOME"
now=$(date +%d-%m-%Y)
echo "The date is: $now"
filename="Backup.$now.tar.xz"
tmppath="/tmp/$filename"
endpath="$HOME/$filename"
echo "Creating $tmppath"
tar --exclude=".dbus" --exclude=".thumbnails" --exclude=".vim" --exclude=".codeintel" --exclude=".config/Popcorn-Time/Cache" --exclude="GDrive" --exclude=".cache" --exclude=".tor-browser-en" --exclude=".config/sublime-text-3" --exclude="$filename.index" --index-file="$CurDir/$filename.index" -Jcvf "$tmppath" .
if [ "$ForceCrypt" = false ]
then
    echo "Encrypt archive?"
    select yn in "Yes" "No"; do
        case $yn in
            Yes ) gpg -c "$tmppath"; Crypted=true; break;;
            No ) Crypted=false;;
        esac
    done
else
    echo "$Passwrd" | gpg -c --passphrase-fd 0 "$tmppath"
    Crypted=true
fi
if [ $Crypted = true ]
then
    echo "Moving encryped files."
    cryptpath="$tmppath.gpg"
    cryptend="$endpath.gpg"
    mv "$cryptpath" "$cryptend"
    echo "Cleaning tmp."
    rm "$tmppath"
    filename="$filename.gpg"
    endpath="$cryptend"
else
    echo "Moving to $endpath"
    mv "$tmppath" "$endpath"
fi
if [ $ForceUpload = false ]
then
    echo "Upload to GDrive?"
    select yn in "Yes" "No"; do
        case $yn in
            Yes ) mkdir "$HOME/GDrive/Backups";
                mv "$endpath" "$HOME/GDrive/Backups/"; 
                PullDrive=true; 
                break;;
            No ) PullDrive=false;;
        esac
    done
else
    mkdir "$HOME/$GDriveDir/Backups"
    mv "$endpath" "$HOME/$GDriveDir/Backups/"
    PullDrive=true
fi
if [ $PullDrive ] 
then 
    cd "$HOME/$GDriveDir/Backups/"
    drive push "$filename"
fi
echo "Backup completed."
exit 0
