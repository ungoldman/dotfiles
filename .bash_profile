if [[ -n "$PS1" ]]; then

  # Add `~/bin` to the `$PATH`
  export PATH="$HOME/bin:$PATH"

  # Load the shell dotfiles, and then some:
  # * ~/.path can be used to extend `$PATH`.
  # * ~/.vars can be used for setting environmental variables.
  for file in ~/.dotfiles/.{bash_prompt,exports,aliases,functions,vars}; do
    [ -r "$file" ] && source "$file"
  done
  unset file

  # ruby config
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  chruby ruby-2 # default to ruby 2

fi
