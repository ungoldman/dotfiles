# git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gd='git diff'
alias gds='git diff --staged'

# list all git aliases
alias galp='(alias | grep "git") && (git config --get-regexp ^alias\. | sed -e s/^alias\.// -e s/\ /\=\/)'

# hub
alias h='hub'
alias b='hub browse'
