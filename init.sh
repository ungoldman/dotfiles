if [[ -n "$PS1" ]]; then

  # Set $DOTFILES environmental variable
  if [ -z ${DOTFILES+x} ]; then
    DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  fi

  # Include all bash helper files
  for file in ${DOTFILES}/sh/*.sh; do
    [ -r "$file" ] && source "$file"
  done

  unset file

fi
