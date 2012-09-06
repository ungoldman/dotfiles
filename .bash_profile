if [[ -n "$PS1" ]]; then

  # fancy prompt
  # - checks if last command was successful
  # - shows user@hostname
  # - shows current path
  # - shows current git branch if applicable
  export PS1="\`if [ \$? = 0 ]; then echo \[\033[32m\]ツ\[\033[0m\]; else echo \[\e[31m\]益\[\e[0m\]; fi\` \[\033[1;30m\]\A\[\033[00m\] \[\033[37m\]\u\[\033[36m\]@\[\033[0m\]\h\[\033[01;34m\] \w \[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.each_line.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "

  # add user bin path
  export PATH=$PATH:~/bin

  # gentlemen prefer sublimetext2
  export EDITOR='subl -w'

  # pretty colors
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced

  # utils
  alias l='ls -FlaG'
  alias grep='grep --color=auto'
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
  alias halp='alias -p'

  # git
  alias g='git'
  alias gs='git status'

  # package managers
  alias ni='npm install '
  alias be='bundle exec '

  # bash customization
  alias lobash='export PS1="\`if [ \$? = 0 ]; then echo \[\033[32m\]$\[\033[0m\]; else echo \[\e[31m\]$\[\e[0m\]; fi\` "'
  alias nobash='export PS1=""'
  alias rebash='source ~/.bash_profile'
  alias subash='subl ~/.bash_profile'

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
  function tabname() {
    echo -ne "\033]0;$@\\007"
  }

  # download kung fu into your brain
  function matrix {
    echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|gawk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
  }

fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
