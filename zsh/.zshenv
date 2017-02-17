#Export new path for zsh configuration files
export ZDOTDIR="$HOME/.dotfiles/zsh"
#Export zplug path
export ZPLUG_HOME="$ZDOTDIR/zplug"
# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
