{ if ($0 ~ /^    .*$/) {
  printf("\"%s\"\n",$0)
  } else {
    if ($0 ~ /^`.*`$/) {
      printf("\"%s\"\n", gensub(/^`(.*)`$/,"\\1",1,$0))
    } else {
      print $0
    }
  }
}
