#!/bin/bash

# Ensure script runs from the correct directory
cd "$(dirname "$0")" || exit 1

# Copy modified zshrc to home directory
cp zshrc "$HOME/.zshrc"

# Ensure the directory is writable
chmod +x "$HOME/.zshrc"

# Reload Zsh
exec zsh
