if [[ -n "$PS1" ]]; then

  if [ -z ${DOTFILES+x} ]; then
    DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  fi

  for file in ${DOTFILES}/bash/.{colors,exports,aliases,functions,langs,prompt,private}; do
    [ -r "$file" ] && source "$file"
  done

  unset file

fi
