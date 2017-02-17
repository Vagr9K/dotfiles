# History file path.
HISTFILE="${ZDOTDIR:-$HOME}/.zhistory"
# Internal history max size.
HISTSIZE=10000
# History file max size
SAVEHIST=5000

setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt HIST_BEEP

# Ignore commands starting with space
setopt histignorespace
