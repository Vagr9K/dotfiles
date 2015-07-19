#/usr/bin/env zsh
#Get git submodules
git submodule update --init --recursive
#Call all installers from their subfolders
setopt EXTENDED_GLOB
echo "Installing dotfiles."
for installer in ./**/install.sh ; do
    ./"$installer"
done


