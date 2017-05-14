ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern root)

# Colors
GREEN=40
YELLOW=208
BLUE=blue

# Declare variable
typeset -A ZSH_HIGHLIGHT_STYLES

# Misc
ZSH_HIGHLIGHT_STYLES[path]='bold'

# Main highlighter
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=red,bold"
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=$YELLOW"
ZSH_HIGHLIGHT_STYLES[suffix-alias]="fg=$GREEN,underline"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=$YELLOW,bold"
ZSH_HIGHLIGHT_STYLES[commandseparator]="none"
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=""
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=""
ZSH_HIGHLIGHT_STYLES[globbing]="fg=$BLUE"
ZSH_HIGHLIGHT_STYLES[history-expansion]="fg=$BLUE"
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="none"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="none"
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="none"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=$YELLOW"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=$YELLOW"
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="fg=$YELLOW"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[assign]="none"
ZSH_HIGHLIGHT_STYLES[redirection]="none"
ZSH_HIGHLIGHT_STYLES[comment]="fg=black,bold"
ZSH_HIGHLIGHT_STYLES[arg0]="fg=$GREEN"

# Bracket highlighter
ZSH_HIGHLIGHT_STYLES[bracket-error]="fg=red,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-1]="fg=$BLUE,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-2]="fg=$GREEN,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-3]="fg=magenta,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-4]="fg=$YELLOW,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-5]="fg=cyan,bold"
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]="standout"

# Root highlighter
ZSH_HIGHLIGHT_STYLES[root]="standout"

# Cursor highlighter
ZSH_HIGHLIGHT_STYLES[cursor]="standout"
