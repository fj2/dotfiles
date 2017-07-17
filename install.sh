#!/bin/bash

programs=$(ls -d1 ./*/) # list all directories, limit results to 1 per line

if command -v stow >/dev/null 2>&1; then
  echo "Restoring config with GNU Stow."
else
  echo "Error: GNU Stow is not installed. Aborting."
  exit
fi

for program in "${programs[@]}"
do
  echo "Restoring files for $program"
  stow "$program"
done

echo "Installing vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Setup complete"
