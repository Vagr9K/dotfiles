#!/usr/bin/env zsh
printf "${Green}Installing VSCode's preferences.${Red}\n"
BasePath="$HOME/.config/Code/User"

SettingsLink="$BasePath/settings.json"
SettingsPath="$HOME/.dotfiles/vscode/settings.json"
printf "${Green}Symlinking settings.json.${Red}\n"
rm -i "$SettingsLink"
ln -s "$SettingsPath" "$SettingsLink"

SnippetsLink="$BasePath/snippets"
SnippetsPath="$HOME/.dotfiles/vscode/snippets"
printf "${Green}Symlinking snippets.${Red}\n"
rm -ir "$SnippetsLink"
ln -s "$SnippetsPath" "$SnippetsLink"

KeybindingsLink="$BasePath/keybindings.json"
KeybindingsPath="$HOME/.dotfiles/vscode/keybindings.json"
printf "${Green}Symlinking settings.json.${Red}\n"
rm -i "$KeybindingsLink"
ln -s "$KeybindingsPath" "$KeybindingsLink"