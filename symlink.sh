#!/bin/bash

DOTFILES_DIR="/home/quinten/dotfiles"

config() {
  CONFIG_DIR="$DOTFILES_DIR/.config"

  shopt -s nullglob
  for dir in "$CONFIG_DIR"/*; do
    [ -d "$dir" ] || continue

    dirname=$(basename "$dir")

    targetDir=$HOME/.config/$dirname

    [ -d "$targetDir" ] && rm -r "$targetDir"

    sudo ln -sf "$dir" "$targetDir"
    echo "Linked $dir to $targetDir"
  done
}

scripts() {
  SCRIPTS_DIR="$DOTFILES_DIR/scripts/bin"

  shopt -s nullglob
  for file in "$SCRIPTS_DIR"/*; do
    [ -f "$file" ] || continue
    [ -x "$file" ] || continue

    filename=$(basename "$file")

    sudo ln -sf "$file" "/usr/local/bin/$filename"
    echo "Linked $file to /usr/local/bin/$filename"
  done
}


config
scripts