#!/bin/sh
# Symlink every file under home/ to the same path in $HOME.
# Idempotent, skips existing targets. --force moves a conflict to <target>.bak-<timestamp>.

set -eu

SRC_DIR="$(cd "$(dirname "$0")" && pwd)/home"

FORCE=0
[ "${1:-}" = "--force" ] && FORCE=1

linked=0
ok=0
conflicts=0

list="$(mktemp)"
find "$SRC_DIR" -type f ! -name .DS_Store > "$list"

while IFS= read -r src; do
  dst="${HOME}/${src#"$SRC_DIR"/}"

  if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then
    printf 'OK        %s\n' "$dst"
    ok=$((ok + 1))
    continue
  fi

  if [ -e "$dst" ] || [ -L "$dst" ]; then
    if [ "$FORCE" -eq 1 ]; then
      bak="${dst}.bak-$(date +%Y%m%d%H%M%S)"
      mv "$dst" "$bak"
      printf 'BACKUP    %s -> %s\n' "$dst" "$bak"
    else
      printf 'CONFLICT  %s exists, skipping (use --force)\n' "$dst"
      conflicts=$((conflicts + 1))
      continue
    fi
  fi

  mkdir -p "$(dirname "$dst")"
  ln -s "$src" "$dst"
  printf 'LINK      %s -> %s\n' "$dst" "$src"
  linked=$((linked + 1))
done < "$list"

rm -f "$list"

printf '\n%d linked, %d already ok, %d conflicts\n' "$linked" "$ok" "$conflicts"
[ "$conflicts" -eq 0 ]
