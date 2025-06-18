# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set the theme. Agnostor is a good choice for a clean look with Git info.
ZSH_THEME="agnoster"

# List of plugins to load. Add wisely to avoid slowing down your shell.
# 'git' is included by default with Oh My Zsh and is very useful.
plugins=(
  git
  z
  # Add other plugins here, e.g., 'zsh-autosuggestions', 'zsh-syntax-highlighting'
)

source $ZSH/oh-my-zsh.sh

# --- User Configuration ---

# Zoxide for faster directory navigation (assuming you have it installed).
eval "$(zoxide init zsh)"

# Uncomment the following lines if you want to set your preferred editor.
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Uncomment this line if you want to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment this line if you want to disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Example Aliases (add your own common aliases here)
# alias ll="ls -lah"
# alias gs="git status"
# alias gc="git commit"
alias zh="cd ~"
