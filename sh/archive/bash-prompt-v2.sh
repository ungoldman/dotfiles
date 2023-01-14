# pretty ls colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# check if branch is clean
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != *"nothing to commit"* ]] && echo "*"
}

# print branch name
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty)) /"
}

function render_prompt {
  local PROMPT=""

  local RED="\033[0;31m"
  local GREEN="\033[0;32m"
  local PURPLE="\033[0;35m"
  local CYAN="\033[0;36m"
  local RED_BOLD="\033[1;31m"
  local PS_RED="\[${RED}\]"
  local PS_GREEN="\[${GREEN}\]"
  local PS_PURPLE="\[${PURPLE}\]"
  local PS_CYAN="\[${CYAN}\]"
  local PS_RED_BOLD="\[${RED_BOLD}\]"
  local RESET="\[\e[0m\]"

  # ssh
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    PROMPT+="${PS_RED}☎  ${PS_CYAN}\u@\h "
  fi

  # current dir
  PROMPT+="${PS_PURPLE}\w "

  # git
  PROMPT+="${PS_RED}\$(parse_git_branch)"

  # caret
  PROMPT+="${PS_GREEN}❯${RESET}"

  echo $PROMPT
}

export PS1="$(render_prompt) "
