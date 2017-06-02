# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

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

# Fix sudo not using aliases
alias sudo='sudo '
alias _='sudo '

# Fix rm
alias rm='rm'

# Set Tmuxinator alias
alias mux="tmuxinator start"

# Fix $PATH
source "$HOME/.dotfiles/zsh/.zprofile"

# Set aliases
source "$HOME/.dotfiles/zsh/aliases/aliases.zsh"