# edit
alias edit='code'
alias dotfiles='edit $DOTFILES'

# utils
alias l='ls -FlAGh'
alias grep='grep --color=auto'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# alias hub to git
alias git=hub

# git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gd='git diff'
alias gds='git diff --staged'

# prompt options
alias rebash='source ~/.bash_profile'
alias simpler='export PS1="${PS_GREEN_BOLD}$ ${PS_WHITE}"'

# get alias halp
alias halp='alias -p'

# get git alias halp
alias galp='git config --get-regexp ^alias\. | sed -e s/^alias\.// -e s/\ /\=\/'

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
alias serve='npx @ungoldman/serve'

# flush dns
alias flushdns='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'

# docker
command -v docker-machine >/dev/null 2>&1 && alias dockerenv='eval "$(docker-machine env dev)"'
