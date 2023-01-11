DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cat <<EOT >> ~/.zshrc

# init dotfiles
export DOTFILES="${DIR}"
[ -f \${DOTFILES}/init.sh ] && source \${DOTFILES}/init.sh

EOT

unset DIR
