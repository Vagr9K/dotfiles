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
# Remove overwrite warnings
setopt clobber

# Ignore commands starting with spcae
setopt histignorespace

# Set Tmuxinator alias
alias mux="tmuxinator start"
# Fix $PATH
source "$HOME/.dotfiles/zsh/.zprofile"

# Ruby
##Rbenv init
eval "$(rbenv init -)"
##System ruby path test
if [ "$(rbenv version | cut -d " " -f1)" = "system" ]
then
    PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
fi
# Virtualenvwrapper
source "$HOME/.local/bin/virtualenvwrapper.sh"

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
