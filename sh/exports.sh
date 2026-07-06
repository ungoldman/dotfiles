# Add local node_modules bin directory to path.
# Disabled: this is a *relative* PATH entry, re-resolved against the current
# working directory on every command. Any repo I cd into can then run its
# node_modules/.bin/* binaries by bare name (no install/build needed). Appended
# order means it can't shadow real commands, but a malicious clone could still
# get code execution via a name I don't have globally (vite, serve, tsc, ...).
# Use `npm run`, `npx`, or per-project `direnv` (PATH_add node_modules/.bin) instead.
# export PATH=$PATH:./node_modules/.bin

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
