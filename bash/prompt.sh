dcolor=$PS_GREEN
remote=""
last_cmd_status="\[\$(if [ \$? == 0 ]; then echo -e \"\\e[0;92m\"; else echo -e \"\\e[0;91m\"; fi)\]∴\[\e[0m\] "
reset="\[\e[0m\]"

if [ ${UID} -eq 0 ]; then
  dcolor=$PS_RED_BOLD
fi

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  remote="${PS_RED}☎  ${PS_CYAN}\u@\h "
fi

export PS1="${remote}${last_cmd_status}${PS_PURPLE}\w ${PS_RED}\$(parse_git_branch)${dcolor}$ ${reset}"

unset dcolor client_loc
