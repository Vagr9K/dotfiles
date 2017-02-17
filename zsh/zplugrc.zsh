#Theme
source "$HOME/.dotfiles/powerline/powerline.zsh"

#Plugin declarations
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions", from:github
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

#Load module settings
source "${ZDOTDIR:-$HOME}/config/environment.zsh"
source "${ZDOTDIR:-$HOME}/config/coloring.zsh"
source "${ZDOTDIR:-$HOME}/config/utility.zsh"
source "${ZDOTDIR:-$HOME}/config/editor.zsh"
source "${ZDOTDIR:-$HOME}/config/history.zsh"
source "${ZDOTDIR:-$HOME}/config/history-substring-search.zsh"
source "${ZDOTDIR:-$HOME}/config/completion.zsh"

#Load plugins
zplug load

#Configure after loading
source "${ZDOTDIR:-$HOME}/config/highlighting.zsh"
