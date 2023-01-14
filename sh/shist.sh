# https://superuser.com/questions/232457/zsh-output-whole-history
function shist {
  fc -lim "*$@*" 1
}
