# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# convenience
alias dev="cd ~/dev"

# colorize ls
alias ls="ls --color=auto"

# requires wslu, allows opening browser from command line
export BROWSER=wslview

# file browser shortcut
alias open='explorer.exe'

# histfile must be set explicitly in ubuntu/wsl or history will be session-only
HISTFILE=~/.zsh_history
