# Use Emacs keybinds for editor.
set -o emacs

# Load cmd editor module.
autoload -Uz edit-command-line
zle -N edit-command-line

# Bind cmdline editor.
bindkey -M emacs "\C-X\C-E" edit-command-line

# From Prezto
# Expands .... to ../..
function expand-dot-to-parent-directory-path {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+='/..'
  else
    LBUFFER+='.'
  fi
}
zle -N expand-dot-to-parent-directory-path
bindkey "." expand-dot-to-parent-directory-path
