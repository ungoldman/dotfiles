if [[ -n "$PS1" ]]; then

  for file in ~/dotfiles/bash/.{exports,aliases,functions,langs,bash_prompt,private}; do
    [ -r "$file" ] && source "$file"
  done
  unset file

fi
