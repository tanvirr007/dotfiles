#!/bin/bash

# Update and upgrade packages
pkg update && pkg upgrade -y

# Dependencies
DEPENDENCIES=(
    git gh tree fd tmate android-tools python-pillow termux-tools termux-exec openssh openssl-tool root-repo tsu python wpa-supplicant pixiewps iw openssl zsh curl rxfetch tmux htop byobu jq wget bc proot
)

# Install dependencies if not already installed
for package in "${DEPENDENCIES[@]}"; do
    if ! command -v "$package" &>/dev/null; then
        while true; do
            echo "➜ Do you want to install $package? (y/N): "
            read -r response
            if [[ -z "$response" ]]; then
                echo "Please provide a valid response (y/Y or n/N)."
                continue
            fi

            # If chooses 'y' or 'Y', install the package
            if [[ "$response" =~ ^[yY]$ ]]; then
                echo "Installing $package..."
                pkg install "$package" -y
                break
            # If chooses 'n' or 'N', skip the installation
            elif [[ "$response" =~ ^[nN]$ ]]; then
                echo "Skipping $package."
                break
            else
                echo "Invalid input. Please answer with y/Y or n/N."
            fi
        done
        clear
    else
        # Skip and clear if already installed
        echo "$package is already installed, skipping."
        clear
    fi
done

echo "All dependencies installed successfully!"

# Pixeldrain
echo "Downloading and setting up Pixeldrain..."
wget https://raw.githubusercontent.com/tanvirr007/scripts/main/scripts/pixeldrain.sh -O "/data/data/com.termux/files/usr/bin/pixeldrain" && chmod +x "/data/data/com.termux/files/usr/bin/pixeldrain"

# Gofile
echo "Downloading and setting up Gofile..."
wget https://raw.githubusercontent.com/tanvirr007/scripts/main/scripts/gofile.sh -O "/data/data/com.termux/files/usr/bin/gofile" && chmod +x "/data/data/com.termux/files/usr/bin/gofile"

echo "Setup completed successfully!"
