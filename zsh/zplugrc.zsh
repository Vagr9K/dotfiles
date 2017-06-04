# Init zplug
source "${ZDOTDIR:-$HOME}/zplug/init.zsh"

#Async library 
zplug mafredri/zsh-async, from:github

#Theme
source "${ZDOTDIR:-$HOME}/config/powerlevel9k.zsh"
zplug dritter/powerlevel9k, use:powerlevel9k.zsh-theme, from:github, as:theme, at:async_all_the_segments

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
source "${ZDOTDIR:-$HOME}/config/directory.zsh"
source "${ZDOTDIR:-$HOME}/config/history-substring-search.zsh"
source "${ZDOTDIR:-$HOME}/config/syntax-highlighting.zsh"
source "${ZDOTDIR:-$HOME}/config/completion.zsh"

#Load plugins
zplug load
