if [[ -n "$PS1" ]]; then

  dotfiles="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

  for file in ${dotfiles}/bash/.{colors,exports,aliases,functions,langs,prompt,private}; do
    [ -r "$file" ] && source "$file"
  done
  unset file dotfiles

fi
