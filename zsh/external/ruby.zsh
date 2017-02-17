# Set a temporary default path for ruby until full load occurs.
TMP_SYSTEM_RUBY_PATH="/home/ruben/.gem/ruby/2.4.0"
PATH="$TMP_SYSTEM_RUBY_PATH/bin:$PATH"

function rbenv_loader(){
  ##Rbenv init
  eval "$(rbenv init -)"
  ##System ruby path test
  if [ "$(rbenv version | cut -d " " -f1)" = "system" ]
  then
    PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
  fi
}

# Lazy load rbenv when needed.
source "${ZDOTDIR:-$HOME}/external/lazy_loader.zsh"
lazy_loader rbenv_loader "ruby" "gem" "rbenv"
