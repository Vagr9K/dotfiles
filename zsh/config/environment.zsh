# Easy URL copy-pasting.
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# Expansion options
setopt BRACE_CCL
setopt COMBINING_CHARS
setopt RC_QUOTES

# Job control
setopt LONG_LIST_JOBS
setopt AUTO_RESUME
setopt NOTIFY
unsetopt BG_NICE
unsetopt HUP
unsetopt CHECK_JOBS
