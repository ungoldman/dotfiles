# edit
alias c='code'
alias code='code'
alias dotfiles='code $DOTFILES'
alias cddotfiles='cd $DOTFILES'

# git
alias gcomb='git checkout $(git_main_branch)'

# utils
alias l='ls -FlAGh'
alias grep='grep --color=auto'
alias tree="find . -print | sed -e 's;[^/]*/;|__;g;s;__|; |;g' | less"

if [[ -r "$(brew --prefix)/bin/bat" ]]; then
  alias c='bat';
else
  alias c='pygmentize -g';
fi

# bash helpers
alias rebash='source ~/.bash_profile'
alias simpler='echo; export PS1="❯ "'

# zsh helpers
alias rezsh='exec zsh -l'

# docker helpers
alias dc='docker compose'

# list all aliases
alias halp='alias'

# get wifi router ip
alias findrouter='netstat -nr | grep default'

# flush dns
alias flushdns='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'
