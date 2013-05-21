if [[ -n "$PS1" ]]; then

  # fancy prompt
  # x check if last command was successful ( \`if [ \$? = 0 ]; then echo ツ; else echo 益; fi\` )
  # x show user@hostname ( \u@\h )
  # √ show current path ( \w )
  # √ show current git branch if applicable ( \$(parse_git_branch) )
  # √ OMG COLORS!!!
  export PS1="\[\033[01;34m\]\w \[\033[31m\]\$(parse_git_branch)\[\033[32m\]$\[\033[0m\] "

  # add user bin path
  export PATH=$PATH:~/bin

  # make sure brew paths precede /usr/bin
  export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:~/bin:$PATH"

  # gentlemen prefer sublimetext2
  export EDITOR='subl -w'

  # pretty colors
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced

  # package managers
  alias ni='npm install '
  alias be='bundle exec '

  # utils
  alias l='ls -FlaG'
  alias grep='grep --color=auto'
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

  # rails
  alias farmdb='be rake db:drop && be rake db:create && be rake db:migrate && be rake db:seed'

  # middleman
  alias mm='bundle exec middleman'

  # github pull request
  alias preq='hub pull-request'

  # git
  alias g='git'
  alias ga='git add'
  alias gc='git commit -m'
  alias gd='git diff'
  alias gs='git status'
  alias gw='git diff --word-diff'

  # if [ -f ~/.git-completion.bash ]; then
  #   . ~/.git-completion.bash
  # fi

  # prompt options
  alias lobash='export PS1="\`if [ \$? = 0 ]; then echo \[\033[32m\]$\[\033[0m\]; else echo \[\e[31m\]$\[\e[0m\]; fi\` "'
  alias nobash='export PS1=""'
  alias rebash='source ~/.bash_profile'
  alias subash='subl ~/.bash_profile'

  # get alias halp
  alias halp='alias -p'
  # get git alias halp
  alias galp='git config --get-regexp alias'

  # get ruby version
  function rvm_version {
    local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
    [ "$gemset" != "" ] && gemset="@$gemset"
    local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
    [ "$version" != "" ] && version="$version"
    local full="$version$gemset"
    [ "$full" != "" ] && echo "$full "
  }

  # make a dir and cd into it
  function mkcd {
    mkdir -p "$*"
    cd "$*"
  }

  # give your terminal session a name
  function tabname {
    echo -ne "\033]0;$@\\007"
  }

  # download kung fu into your brain
  function matrix {
    echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|gawk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
  }

  # https://twitter.com/peterc/status/274714598643470337
  function maze {
    ruby -e 'print ["\u2571","\u2572"].sample while sleep 0.001'
  }

  # check if branch is clean
  function parse_git_dirty {
   [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
  }

  # print branch name
  function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty)) /"
  }

fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
