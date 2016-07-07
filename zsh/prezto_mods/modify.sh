#!/usr/bin/env zsh
MyTheme="$HOME/.dotfiles/zsh/prezto_mods/agnoster2/agnoster2"
echo "Adding new prompt."
ln -s "$MyTheme" "$HOME/.dotfiles/zsh/.zprezto/modules/prompt/functions/prompt_agnoster2_setup"
