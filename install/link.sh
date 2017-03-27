

cat <<EOT >> ~/.bash_profile
# include dotfiles
DOTFILES="${HOME}/dev/git/dotfiles"
[ -f ${DOTFILES}/.bash_profile ] && source ${DOTFILES}/.bash_profile
EOT
