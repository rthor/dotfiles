#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")";
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "dotfiles.sh" -avh \
  --no-perms . ~;
source ~/.bash_profile;
echo "All is well.";
