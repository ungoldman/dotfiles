# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# Add local node_modules bin directory to path
export PATH=$PATH:./node_modules/.bin

# make sure brew paths precede /usr/bin
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# set code as default editor
export EDITOR='code -nw'
export VISUAL='code -nw'

# pretty colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
