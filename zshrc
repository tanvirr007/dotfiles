export ZSH="$HOME/.oh-my-zsh"

# Set Spaceship Prompt
ZSH_THEME="spaceship"

#Aliases - general
alias c="clear && rxfetch"
alias dev="cd ~/storage/downloads/termux"
alias h="htop"

gitsetup() {
  git config --global user.name "tanvirr007"
  git config --global user.email "43490582+tanvirr007@users.noreply.github.com"
  git config --global core.editor "nano"
  git config --global help.autocorrect 50
  git config --global init.defaultBranch main

  echo "• Username: tanvirr007 ✔"
  echo "• Email: 43490582+tanvirr007@users***** ✔"
  echo "• Default editor: nano ✔"
  echo "• Autocorrect delay: 5s ✔"
  echo "• Default branch: main ✔"
  echo ""
  echo "» Git configuration has been applied successfully"
}

# Git - basic
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -s"
alias gp="git push"
alias gpf="git push --force"
alias gpff="git push --force-with-lease"
alias gpl="git pull"
alias glo="git log --oneline --graph --decorate --all"
alias gba="git branch -a"
alias gcl="git clone"
alias gdf="git diff"

# Git - cherry-pick
alias gcp="git cherry-pick -s"
alias gcpc="git cherry-pick --continue"
alias gcpa="git cherry-pick --abort"
alias gcps="git cherry-pick --skip"

# Git - fetch
alias gf="git fetch"
alias gfa="git fetch --all --prune"

# Git - rebase
alias grb="git rebase"
alias grbc="git rebase --continue"
alias grba="git rebase --abort"
alias grbs="git rebase --skip"

# Git - checkout
alias gck="git checkout"
alias gckb="git checkout -b"

# Git - merge
alias gm="git merge"

# Git - restore
alias grs="git restore"
alias grsa="git restore ."
alias grsf="git restore --staged"
alias grsw="git restore --staged --worktree ."

# Git - stash
alias gst="git stash"
alias gsta="git stash apply"
alias gstp="git stash pop"
alias gstl="git stash list"
alias gstd="git stash drop"

# Plugins
plugins=(git)
source $HOME/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Customize Spaceship Prompt
SPACESHIP_PROMPT_ADD_NEWLINE=true    # Adds a newline before the prompt
SPACESHIP_USER_SHOW=always           # Display username always
SPACESHIP_TIME_SHOW=false             # Don't show the current time

# Auto-create and enter default directory
TARGET="$HOME/storage/downloads/termux"

if [ ! -d "$TARGET" ]; then
    mkdir -p "$TARGET"
fi

cd "$TARGET"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh
