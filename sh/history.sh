# enlarge zsh history
# https://medium.com/macoclock/forced-to-use-zsh-by-macos-catalina-lets-fix-our-history-command-first-9ce86dca540e
HISTSIZE=99999
HISTFILESIZE=999999
SAVEHIST=$HISTSIZE

# https://superuser.com/questions/232457/zsh-output-whole-history
function shist {
  fc -lim "*$@*" 1
}

alias hist='history'
alias histall='history 1'
