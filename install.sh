#!/bin/bash

# Ensure script runs from the correct directory
cd "$(dirname "$0")" || exit 1

# Update packages and install dependencies
pkg update -y
pkg install git zsh -y

# Configure Git settings
git config --global user.email "md.tanvirhasannijum@gmail.com"
git config --global user.name "tanvirr007"
git config --global core.editor "nano"
git config --global help.autocorrect 1

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
fi

# Set Zsh as default shell
chsh -s zsh

# Install Spaceship Prompt
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt" ]; then
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git \
        "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt" --depth=1
    ln -s "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" \
        "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
fi

# Install Plugins
mkdir -p "$HOME/.zsh-plugins"
if [ ! -d "$HOME/.zsh-plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh-plugins/zsh-autosuggestions"
fi
if [ ! -d "$HOME/.zsh-plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-plugins/zsh-syntax-highlighting"
fi

# Backup old .zshrc
if [ -f "$HOME/.zshrc" ]; then
    mv "$HOME/.zshrc" "$HOME/.zshrc.backup"
fi

# Copy custom zshrc config
cp zshrc "$HOME/.zshrc"

# Reload Zsh
exec zsh
