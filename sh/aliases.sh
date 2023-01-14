# edit
alias edit='code'
alias dotfiles='edit $DOTFILES'
alias cddotfiles='cd $DOTFILES'

# utils
alias l='ls -FlAGh'
alias grep='grep --color=auto'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# bash helpers
alias rebash='source ~/.bash_profile'
alias simpler='echo; export PS1="❯ "'

# zsh helpers
alias rezsh='exec zsh'
alias hist='history'
alias histall='history 1'

# list all aliases
alias halp='alias'

# get wifi router ip
alias findrouter='netstat -nr | grep default'

# flush dns
alias flushdns='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'
