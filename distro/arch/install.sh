#!/usr/bin/env zsh
echo "Installing SSH agent service."
ln -s "$HOME/.dotfiles/distro/arch/systemd/ssh-agent.service" "$HOME/.config/systemd/user/ssh-agent.service"
echo "Enabling the service."
systemctl --user daemon-reload
systemctl --user enable ssh-agent.service
systemctl --user restart ssh-agent.service

echo "Installing ssh config files."
ln -s "$HOME/.dotfiles/distro/arch/ssh/config" "$HOME/.ssh/config"
sudo systemctl restart sshd.service
