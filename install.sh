#!/bin/bash

# FUNCTION DELCARATIONS
# =====================

function arch_package_install_helper() {
  yaourt -Syu;
  yaourt -S $(cat packages/arch packages/arch_aur);
  echo
  echo "Installing vundle"
  echo
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
}

function arch_package_install() {
  while true; do
      read -p "Do you wish to install recommended packages? [y/n] " yn
      case $yn in
        [Yy]* ) arch_package_install_helper; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
      esac
  done
  echo
}

function yaourt_install_helper() {
  sudo tee -a /etc/pacman.conf << EOF

[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/\$arch
EOF
  sudo pacman -Sy yaourt
  arch_package_install
}

# Ask user if they wish to install yaourt
function yaourt_install() {
  while true; do
      read -p "Do you wish to install yaourt? [y/n] " yn
      case $yn in
        [Yy]* ) yaourt_install_helper break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
      esac
  done
  echo
}

function config_install() {
  # Check if stow is installed
  if command -v stow >/dev/null 2>&1; then
    echo "Restoring config with GNU Stow."
  else
    echo "Error: GNU Stow is not installed. Aborting."
    exit
  fi
  echo

  # list all directories, limit results to 1 per line
  programs=$(ls -d1 -- */)

  for program in ${programs///}; do # Remove the trailing '/'s from directories
    if [ "${program}" != "packages" ]; then
      echo "Restoring files for ${program}"
      stow "${program}"
    fi
  done
  echo
}

# END FUNCTION DECLARATIONS
# =========================

config_install

yaourt_install

echo "Setup complete"
