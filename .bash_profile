if [[ -n "$PS1" ]]; then

  if [ -z ${DOTFILES+x} ]; then
    DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  fi

  if [ -f $DOTFILES/bash/git-completion.bash ]; then
    source $DOTFILES/bash/git-completion.bash

    # Add git completion to aliases
    __git_complete g __git_main
  fi

  for file in ${DOTFILES}/bash/.{colors,exports,aliases,functions,langs,prompt,private}; do
    [ -r "$file" ] && source "$file"
  done

  unset file

fi
