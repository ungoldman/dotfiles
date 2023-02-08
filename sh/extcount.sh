# count files by extension in dir (e.g. extcount yml)
function extcount {
  find . -iname "*.$*" | cut -d . -f1 | uniq -c
}

# count js files and laugh/cry
function extcountjs {
  cat << END

    .wwwwwwww.
  .w"  "WW"  "w.
 ."   /\  /\   ".
|\     o  o     /|
 \|  ___\/___  |/
   \ \_v__v_/ /     $(find . -iname "*.js" ! -path '*/node_modules/*' | cut -d . -f1 | uniq -c | xargs)!
    \________/      ha, ha, ha

END
}
