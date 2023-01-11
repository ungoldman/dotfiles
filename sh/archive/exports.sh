# set tab title to current directory if using iterm
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; '"$PROMPT_COMMAND";
fi

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
