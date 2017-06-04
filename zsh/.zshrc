# Set TERM early for guake
export TERM="xterm-256color"

# Load package manager
source "${ZDOTDIR:-$HOME}/packages.zsh"

# Set Tmuxinator alias
alias mux="tmuxinator start"
# Fix $PATH
source "$HOME/.dotfiles/zsh/.zprofile"

# Load aliases
source "${ZDOTDIR:-$HOME}/aliases/aliases.zsh"

# Use ccache for building Android from source
export USE_CCACHE=1

# Ruby
source "${ZDOTDIR:-$HOME}/external/ruby.zsh"

# Virtualenvwrapper
source "$HOME/.local/bin/virtualenvwrapper_lazy.sh"

# ARCH: Package manager auto-search
source /usr/share/doc/pkgfile/command-not-found.zsh
