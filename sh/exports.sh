# Add local node_modules bin directory to path
export PATH=$PATH:./node_modules/.bin

# make sure brew paths precede /usr/bin
# export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# set code as default editor
export EDITOR='code -nw'
export VISUAL='code -nw'

# pretty colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# so you can control-D out of a program but not accidentally lose your shell
export IGNOREEOF=12

# disable homebrew analytics
# https://docs.brew.sh/Analytics
export HOMEBREW_NO_ANALYTICS=1
