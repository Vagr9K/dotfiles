#!/usr/bin/env zsh

siteroot=$(python -c "import site; print(site.getsitepackages()[0])")
pkgroot="$siteroot/powerline"
zshbind="$pkgroot/bindings/zsh/powerline.zsh"
unitname="powerline-daemon.service"

echo "Updating Powerline symlinks."
ln -sf "$zshbind" "$HOME/.dotfiles/powerline/powerline.zsh"

echo "Enabling systemd service."
systemctl --user enable "$unitname"
systemctl --user restart "$unitname"
