export PS1="\[\033[32m\]ツ\[\033[0m\] \[\033[37m\]\u@\h\[\033[01;34m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.each_line.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "

alias gs='git status'
alias gac='git add -A; git commit -m '
alias gc='git commit -m '
alias be='bundle exec '

export PATH="~/bin:/user/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH=/opt/local/lib/postgresql90/bin:$PATH # PostgreSQL path
export EDITOR='subl -w'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
