#Export new path for zsh configuration files
export ZDOTDIR="$HOME/.dotfiles/zsh"
#Export default user name
export DEFAULT_USER="ruben"
# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
