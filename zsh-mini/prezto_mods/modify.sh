#!/usr/bin/env zsh
MyTheme="$HOME/.dotfiles/zsh-mini/prezto_mods/grml/grml"
echo "Adding new prompt."
ln -s "$MyTheme" "$HOME/.dotfiles/zsh-mini/.zprezto/modules/prompt/functions/prompt_grml_setup"