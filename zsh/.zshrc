zmodload zsh/zprof

# Init zplug
source "${ZDOTDIR:-$HOME}/zplug/init.zsh"

# Load plugins
source "${ZDOTDIR:-$HOME}/zplugrc.zsh"

# Set Tmuxinator alias
alias mux="tmuxinator start"
# Fix $PATH
source "$HOME/.dotfiles/zsh/.zprofile"

# Set Atom aliases
alias atom="atom-beta"
alias apm="apm-beta"

# Ruby
source "${ZDOTDIR:-$HOME}/external/ruby.zsh"

# Virtualenvwrapper
source "$HOME/.local/bin/virtualenvwrapper_lazy.sh"

#ARCH: Package manager auto-search
source /usr/share/doc/pkgfile/command-not-found.zsh
