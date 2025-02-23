export ZSH="$HOME/.oh-my-zsh"

# Set Spaceship Prompt
ZSH_THEME="spaceship"

# Aliases
alias c="clear && rxfetch"
alias h="htop"
alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gl="git log --oneline --graph --decorate --all"
alias gb="git branch -a"
alias gcl="git clone"
alias gdf="git diff"

# Plugins
plugins=(git)
source $HOME/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Customize Spaceship Prompt
SPACESHIP_PROMPT_ADD_NEWLINE=true    # Adds a newline before the prompt
SPACESHIP_USER_SHOW=always           # Display username always
SPACESHIP_TIME_SHOW=false             # Don't show the current time

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh
