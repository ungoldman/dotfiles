# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# set tab title to current directory if using iterm
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; '"$PROMPT_COMMAND";
fi

# Add local node_modules bin directory to path
export PATH=$PATH:./node_modules/.bin

# make sure brew paths precede /usr/bin
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# set code as default editor
export EDITOR='code -nw'
export VISUAL='code -nw'

# pretty colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# export OS shorthand identifier
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  export OS='linux'
elif [[ "$OSTYPE" == "darwin"* ]]; then
  export OS='osx'
elif [[ "$OSTYPE" == "cygwin" ]]; then
  export OS='windows'
elif [[ "$OSTYPE" == "msys" ]]; then
  export OS='windows'
elif [[ "$OSTYPE" == "win32" ]]; then
  export OS='windows'
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  export OS='bsd'
else
  export OS='unknown'
fi

# https://support.apple.com/en-us/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1
