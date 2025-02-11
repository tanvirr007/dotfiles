## Dotfiles
This repository contains my personal configurations and setup scripts for my Termux and Zsh environment. It includes everything from package installations to custom Zsh themes and plugins.

1. **dependencies.sh:** Installs necessary packages that I commonly use for my Termux setup.
2. **install.sh:** This script to set up my environment, configure Git, install Zsh, and set up Oh My Zsh and other helpful tools.
3. **repo.sh:** This one clone some of my favorite repositories.
4. **sync.sh:** This applies zshrc  from the folder to my environment.
5. **zshrc:**  My customized Zsh configuration file, set up with the Spaceship prompt and useful plugins.
6. **MesloLGSNerdFont-Regular.ttf:** This is a custom font.

### Setup Instructions
1. **Clone the repository:**
```
git clone https://github.com/tanvirr007/dotfiles.git
cd dotfiles
```

2. **Run the installation script:**
```
bash install.sh
```
- This will:
  - Install required packages
  - Set up Oh My Zsh
  - Apply custom Zsh themes and plugins
  - Set up Git configuration
3. Once the script completes, The terminal will be set up with my custom environment!

### Customization
- If you want to modify anything, feel free to change the zshrc file and run bash sync.sh to see the changes.
- If you want to add more repositories to the cloning script, simply modify the REPOS array in the repo.sh script. Same thing for dependencies.sh

### Author
- This script is created by [тαиνir](https://github.com/tanvirr007)
- If you find any issues or want to improve the script, feel free to open a pull request and contact me on [Telegram](https://t.me/tanvirr007)
