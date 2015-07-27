#/usr/bin/env zsh

# Reset
export Color_Off='\033[0m'       # Text Reset
# Regular Colors
export Red='\033[0;31m'          # Red
export Green='\033[0;32m'        # Green
export Yellow='\033[0;33m'       # Yellow

printf "${Green}Updating dotfiles.${Red}\n"
#Update submodule repositories
git submodule update --init --recursive
#Call all installers from their subfolders
printf "${Green}Installing dotfiles.${Red}\n"
for installer in ./**/install.sh ; do
    ./"$installer"
done
printf "${Green}Done installing dotfiles.${Color_Off}\n"

