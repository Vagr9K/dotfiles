# Enable command correction
setopt CORRECT

# Cd shortcut
setopt AUTO_CD

# Dots expansion
setopt GLOB_DOTS

# Extended glob operator
setopt EXTENDED_GLOB

# mkdir
alias mkdir='mkdir -p'

# Fix sudo not using aliases
alias sudo='sudo '
alias _='sudo '

# ls
alias ls="ls --group-directories-first --color=auto"

alias ll='ls -lhA'
alias la='ll'
alias lm='ll | "$PAGER"'

# Grep
export GREP_COLORS='mt=37;45'
alias grep="grep --color=auto"

# File Download
alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'

# Resource Usage
alias df='df -kh'
alias du='du -kh'

##Shortcuts
# Makes a directory and changes to it.
function mkdcd {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

# Changes to a directory and lists its contents.
function cdls {
  builtin cd "$argv[-1]" && ls -la "${(@)argv[1,-2]}"
}
