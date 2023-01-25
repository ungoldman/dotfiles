if [[ -n "$PS1" ]]; then

  # Set $DOTFILES env var
  export DOTFILES="$( cd "$( dirname -- "$0" )" && pwd )"

  source ${DOTFILES}/.zshrc

  # Include all bash helper files
  for file in ${DOTFILES}/sh/*.sh; do
    [ -r "$file" ] && source "$file"
  done

  unset file

fi
