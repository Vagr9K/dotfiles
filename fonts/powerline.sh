#!/usr/bin/env zsh
tmpdir=$(mktemp -d /tmp/dotfiles.fonts.XXXXXXXXX)
git clone https://github.com/powerline/fonts "$tmpdir"
rc=$?; if [[ $rc != 0 ]]; then exit $rc; fi
./"$tmpdir"/install.sh
rm -rf "$tmpdir"

