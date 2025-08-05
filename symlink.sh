#!/bin/bash

SOURCE_DIR="/home/quinten/dotfiles/scripts/bin"

# Loop over all files in the directory
for file in "$SOURCE_DIR"/*; do
  # Skip if it's not a regular file or not executable
  [ -f "$file" ] || continue
  [ -x "$file" ] || continue

  # Get the base name of the file
  filename=$(basename "$file")

  # Create a symbolic link in /usr/local/bin
  sudo ln -sf "$file" "/usr/local/bin/$filename"
  echo "Linked $file to /usr/local/bin/$filename"
done
