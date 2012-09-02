export PS1="\`if [ \$? = 0 ]; then echo \[\033[32m\]ツ\[\033[0m\]; else echo \[\e[31m\]益\[\e[0m\]; fi\` \[\033[1;30m\]\A\[\033[00m\] \[\033[37m\]\u\[\033[36m\]@\[\033[0m\]\h\[\033[01;34m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.each_line.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "

export PATH=$PATH:~/bin
export EDITOR='subl -w'

alias l='ls -FlaG'
alias g='git'
alias gs='git status'
alias ni='npm install'
alias be='bundle exec '

alias lobash='export PS1="\`if [ \$? = 0 ]; then echo \[\033[32m\]$\[\033[0m\]; else echo \[\e[31m\]$\[\e[0m\]; fi\` "'
alias nobash='export PS1=""'
alias rebash='source ~/.bash_profile'
alias subash='subl ~/.bash_profile'

alias grep='grep --color=auto'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias halp='alias -p'

function rvm_version {
  local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
  [ "$gemset" != "" ] && gemset="@$gemset"
  local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
  [ "$version" != "" ] && version="$version"
  local full="$version$gemset"
  [ "$full" != "" ] && echo "$full "
}

function mkcd {
  mkdir -p "$*"
  cd "$*"
}

function tabname() {
  echo -ne "\033]0;$@\\007"
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
