if command -v mise >/dev/null; then
  eval "$(mise activate ${ZSH_VERSION:+zsh}${BASH_VERSION:+bash})"
fi
