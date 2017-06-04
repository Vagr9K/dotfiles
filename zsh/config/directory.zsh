# Based on Prezto

# Options
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Aliases
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index