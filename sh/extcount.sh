# count files by extension in dir (e.g. extcount yml)
function extcount {
  find . -iname "*.$*" | cut -d . -f1 | uniq -c
}
