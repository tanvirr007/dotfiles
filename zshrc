export ZSH="$HOME/.oh-my-zsh"

# Set Spaceship Prompt
ZSH_THEME="spaceship"

# Plugins
source $HOME/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable Oh My Zsh plugins
plugins=(git)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh
