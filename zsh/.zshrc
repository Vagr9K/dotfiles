#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# Dots expansion
setopt GLOB_DOTS
# Cd shortcut
setopt AUTO_CD
# Extended glob operator
setopt EXTENDED_GLOB

#Fix $PATH
source "$HOME/.dotfiles/zsh/.zprofile"
#Virtualenvwrapper
source /usr/bin/virtualenvwrapper.sh

case "$(uname -s)" in

   Linux)
        #ARCH: Package manager auto-search
        source /usr/share/doc/pkgfile/command-not-found.zsh
     ;;

   CYGWIN*|MINGW32*|MSYS*)
     ;;

   *)
    #Other OS
     ;;
esac
