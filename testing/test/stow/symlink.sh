#!/bin/bash

DOTFILES_DIR="/home/quinten/dotfiles"

run () {
  LOCATION=$(pwd)

  dirs=($(find "$LOCATION" -mindepth 1 -maxdepth 1 -type d -exec basename {} \;))

  shopt -s nullglob

  for dir in $dirs; do
    echo $dir
    stow $dir
  done
}

run