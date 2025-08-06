#!/bin/bash

profile=$(powerprofilesctl | grep '*' | grep -o '[a-z-]\{1,\}')

case "$profile" in
  performance) icon="󱀚 " ;;
  balanced)    icon="󰹩 " ;;
  power-saver) icon="󰌪 " ;;
  *)           icon="? " ;;
esac

echo "{\"text\": \"$icon\", \"tooltip\": \"$profile\"}"
