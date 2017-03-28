DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cat <<EOT >> ~/.bash_profile

# include dotfiles
export DOTFILES="${DIR}"
[ -f \${DOTFILES}/.bash_profile ] && source \${DOTFILES}/.bash_profile

EOT

unset DIR
