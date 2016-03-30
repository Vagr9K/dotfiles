#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
export PROFILE_LOADED='true'

#Terminal color mode
if [ ! -z "$TMUX" ]
then
    #Tmux sessions need "screen" set as TERM
    export TERM="screen-256color"
else
    export TERM="xterm-256color"
fi

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )
#

#Python
export WORKON_HOME=~/.virtualenvs

#Scripts folder path
SCRIPTSPATH="$HOME/.dotfiles/scripts/"
#Composer path
CCOMPOSER="$HOME/.composer/"

# Set the list of directories that Zsh searches for programs.
path=(
   /usr/lib/ccache/bin/
   /usr/{bin,sbin}
   /usr/local/{bin,sbin}
   "$COMPOSER/vendor/bin"
   $SCRIPTSPATH
   $path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-g -i -M -R -S -w -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$LOGNAME"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
