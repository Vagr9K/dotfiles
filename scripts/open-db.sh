#!/usr/bin/zsh

sudo systemctl start postgresql.service
sudo -H -u postgres bash -c "clear && bash"