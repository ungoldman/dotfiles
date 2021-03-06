# edit
alias edit='code'
alias dotfiles='edit $DOTFILES'

# utils
alias l='ls -FlAGh'
alias grep='grep --color=auto'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gd='git diff'
alias gds='git diff --staged'

# alias hub to git
command -v hub >/dev/null 2>&1 && eval "$(hub alias -s)"

# github pull request
command -v hub >/dev/null 2>&1 && alias preq='hub pull-request'

# prompt options
alias rebash='source ~/.bash_profile'
alias simpler='export PS1="${PS_GREEN}\w ${PS_GREEN_BOLD}$ ${PS_WHITE}"'

# get alias halp
alias halp='alias -p'

# get git alias halp
alias galp='git config --get-regexp '^alias.' | sed s/^alias.//'

# coffee time
alias ni='rm -rf node_modules && npm i'
alias nis='rm -rf node_modules && npm i && npm start'
alias nit='rm -rf node_modules && npm i && npm t'
alias nii='rm -rf node_modules && npm cache clear --force && npm i'

# internet
alias browse='open -a "/Applications/Google Chrome.app" --args --ignore-gpu-blacklist'

# get wifi router ip
alias findrouter='netstat -nr | grep default'

# serve a directory
alias serve='python -m SimpleHTTPServer 8000'

# flush dns
alias flushdns='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'

# docker
command -v docker-machine >/dev/null 2>&1 && alias dockerenv='eval "$(docker-machine env dev)"'
