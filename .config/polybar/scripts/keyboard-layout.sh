#!/bin/sh

layout_print() {
  KB_LAYOUT="$(setxkbmap -query | grep layout | cut -d ':' -f 2 | xargs)"
  echo  $KB_LAYOUT
}

layout_toggle() {
  KB_LAYOUT="$(setxkbmap -query | grep layout | cut -d ':' -f 2 | xargs)"
  if [ "$KB_LAYOUT" = "gb" ]; then
    setxkbmap -layout us
  else
    setxkbmap -layout gb
  fi
}

case "$1" in
  --toggle)
      layout_toggle
      ;;
  *)
      layout_print
      ;;
esac
