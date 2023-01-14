function countjs {
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
