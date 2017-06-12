#Export default user name
export DEFAULT_USER="ruben"

# Environment settings
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

# Clear duplicates from path arrays.
typeset -gU cdpath fpath mailpath path

#Python
export WORKON_HOME=~/.virtualenvs

#Scripts folder path
SCRIPTSPATH="$HOME/.dotfiles/scripts/"

# Set $PATH
path=(
   "$HOME/.rbenv/bin/"
   /usr/lib/ccache/bin/
   /usr/{bin,sbin}
   /usr/local/{bin,sbin}
   "$HOME/.local/bin/"
   $SCRIPTSPATH
   $path
)

# Enable ssh-agent (based on systemd service)
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Set Less options. Mouse enabled.
export LESS='-g -i -M -R -S -w -z-4'

# Temp directory variable setup.
if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$USER"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
