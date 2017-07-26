#!/bin/bash

# list all directories, limit results to 1 per line
programs=$(ls -d1 -- */)

if command -v stow >/dev/null 2>&1; then
  echo "Restoring config with GNU Stow."
else
  echo "Error: GNU Stow is not installed. Aborting."
  exit
fi

echo

# Remove the trailing '/'s from directories
for program in ${programs///}; do
  echo "Restoring files for ${program}"
  stow "${program}"
done

echo

echo "Installing vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo

echo "You may wish to install:"
echo " - feh"
echo " - i3"
echo " - i3lock"
echo " - light"
echo " - maim"
echo " - polybar"
echo " - pulseaudio"
echo " - redshift"
echo " - rofi"
echo " - unclutter"
echo " - xclip"
echo " - xfce4-terminal"

echo

echo "Setup complete"
