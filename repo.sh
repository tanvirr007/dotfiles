#!/bin/bash

# List of repositories
REPOS=(
    "https://github.com/tanvir-projects-archive/BanvirMediaDownloader.git"
    "https://github.com/tanvirr007/build-script-live.git"
    "https://github.com/tanvir-projects-archive/OneShot"
    "https://github.com/tanvir-projects-archive/stock-tracker.git"
    "https://github.com/tanvirr007/bmi-calculator.git"
    "https://github.com/tanvirr007/crave.git"
    "https://github.com/tanvir-projects-archive/tic-tac-toe.git"
)

# Clone repositories if not already cloned
for repo in "${REPOS[@]}"; do
    repo_name=$(basename "$repo" .git)
    if [ ! -d "$HOME/$repo_name" ]; then
        while true; do
            echo "➜ Do you want to clone $repo_name? (y/N): "
            read -r response
            if [[ -z "$response" ]]; then
                echo "Please provide a valid response (y/Y or n/N)."
                continue
            fi

            # If chooses 'y' or 'Y', clone the repository
            if [[ "$response" =~ ^[yY]$ ]]; then
                echo "Cloning $repo_name..."
                git clone "$repo" "$HOME/$repo_name"
                break
            # If chooses 'n' or 'N', skip the cloning
            elif [[ "$response" =~ ^[nN]$ ]]; then
                echo "Skipping $repo_name."
                break
            else
                echo "Invalid input. Please answer with y/Y or n/N."
            fi
        done
        clear
    else
        echo "$repo_name path is already exists, skipping."
        clear
    fi
done

echo "All repositories processed successfully!"
