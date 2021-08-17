#!/bin/bash
# credits to jeffshomali on dev.to for parts of this script.

# I've set up a cronjob to run this srcipt every week on sunday. You should backup your files too.`:w

# script begin:
# check to see is git command line installed in this machine
IS_GIT_AVAILABLE="$(git --version)"
if [[ $IS_GIT_AVAILABLE == *"version"* ]]; then
  echo "Git is Available"
else
  echo "Git is not installed"
  exit 1
fi

# backs up doom-emacs and emacs config files
cd "$HOME/.doom.d/" || return
tar cfzv "$HOME/suryapranav.github.io/DOOM-EMACS-CONFIGS.tar.gz" *
cd "$HOME/.emacs.d/" || return
tar cfzv "$HOME/suryapranav.github.io/EMACS-CONFIGS.tar.gz" *
cd "$HOME/suryapranav.github.io/" || return
cp  "$HOME/.zshrc" "$HOME/suryapranav.github.io/zshconfig"; cp "$HOME/.vimrc" "$HOME/suryapranav.github.io/vimconfig"

# Check git status
gs="$(git status | grep -i "modified")"
# echo "${gs}"

# If there is a new change
if [[ $gs == *"modified"* ]]; then
  echo "push"
fi

# push to Github
cd "$HOME/suryapranav.github.io"
git add --all;
git commit -m "New backup $(date +'%Y-%m-%d %H:%M:%S')";
git push -u origin main
