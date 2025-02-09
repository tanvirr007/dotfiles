#!/bin/bash

# Update and upgrade packages
pkg update && pkg upgrade -y

# Dependencies
DEPENDENCIES=(
    git gh tmate android-tools termux-tools termux-exec openssh openssl-tool root-repo tsu python wpa-supplicant pixiewps iw openssl zsh curl rxfetch tmux htop byobu jq wget bc proot
)

# Install dependencies
for package in "${DEPENDENCIES[@]}"; do
    pkg install "$package" -y
done

echo "All dependencies installed successfully!"
