if [[ -n "$PS1" ]]; then

  # Set $DOTFILES environmental variable
  if [ -z ${DOTFILES+x} ]; then
    DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  fi

  # Add git completion to aliases
  if [ -f $DOTFILES/bash/git-completion.bash ]; then
    source $DOTFILES/bash/git-completion.bash
    __git_complete g __git_main
  fi

  # Include all bash helper files
  for file in ${DOTFILES}/bash/{aliases,colors,exports,functions,languages,private,prompt}.sh; do
    [ -r "$file" ] && source "$file"
  done

  unset file

fi
