# git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git checkout $(git_main_branch)'
alias gd='git diff'
alias gds='git diff --staged'

# list all git aliases
alias galp='git alias'

# github
alias b='gh browse -b $(git rev-parse --abbrev-ref HEAD)'

# borrowed from oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh/blob/1c8dee848dad169c9eb1a7b0148842b48a99cad1/plugins/git/git.plugin.zsh#L35
# Check if main exists and use instead of master
function git_main_branch() {
  command git rev-parse --git-dir &>/dev/null || return
  local ref
  for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk,mainline,default,master}; do
    if command git show-ref -q --verify $ref; then
      echo ${ref:t}
      return 0
    fi
  done

  # If no main branch was found, fall back to master but return error
  echo master
  return 1
}
