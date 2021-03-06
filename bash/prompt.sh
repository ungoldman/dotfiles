dcolor=$PS_GREEN_BOLD
remote=""

if [ ${UID} -eq 0 ]; then
  dcolor=$PS_RED_BOLD
fi

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  remote="${PS_RED}☎  ${PS_CYAN}\u@\h "
fi

export PS1="${remote}${PS_GREEN}\w ${PS_RED}\$(parse_git_branch)${dcolor}∴ ${PS_WHITE}"

unset dcolor client_loc
