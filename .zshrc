# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# starship
eval "$(starship init zsh)"

# set tab title to current dir
function set_win_title(){
    echo -ne "\033]0; $(basename "$PWD") \007"
}
precmd_functions+=(set_win_title)
# set tab title to program (pre-execution)
preexec() { printf "\033]0;  `history $HISTCMD | cut -b7-`  \007"; }
# two above seem to coexist okay. shruggerooney

# note that order matters here, zsh completions/suggestions/etc
# can conflict with each other or other stuff or not pick up important
# things to complete if they're run too early

if type brew &>/dev/null; then
  # brew install zsh-completions
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload bashcompinit && bashcompinit
  autoload -Uz compinit && compinit

  # brew install zsh-autosuggestions
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

  # brew install zsh-syntax-highlighting
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  # brew install zsh-history-substring-search
  source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

  # aws tab completion
  # https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-completion.html
  if type aws &>/dev/null; then
    complete -C '/opt/homebrew/bin/aws_completer' aws
  fi
fi

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# home/end keys be normal ffs
bindkey '\e[H'    beginning-of-line
bindkey '\e[F'    end-of-line

# up/down for substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# write to history across multiple sessions simultaneously
setopt share_history
