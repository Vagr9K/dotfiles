# Load theme settings
source "${ZDOTDIR:-$HOME}/config/powerlevel9k.zsh"

#Load module settings
source "${ZDOTDIR:-$HOME}/config/environment.zsh"
source "${ZDOTDIR:-$HOME}/config/coloring.zsh"
source "${ZDOTDIR:-$HOME}/config/utility.zsh"
source "${ZDOTDIR:-$HOME}/config/editor.zsh"
source "${ZDOTDIR:-$HOME}/config/history.zsh"
source "${ZDOTDIR:-$HOME}/config/directory.zsh"
source "${ZDOTDIR:-$HOME}/config/history-substring-search.zsh"
source "${ZDOTDIR:-$HOME}/config/syntax-highlighting.zsh"
source "${ZDOTDIR:-$HOME}/config/nvm.zsh"
source "${ZDOTDIR:-$HOME}/config/completion.zsh"

# Antigen settings
ADOTDIR="${ZDOTDIR:-$HOME}/antigen-bundles"

# Load antigen
source "${ZDOTDIR:-$HOME}/antigen/antigen.zsh"

# Init antigen
antigen init "${ZDOTDIR:-$HOME}/antigenrc"
