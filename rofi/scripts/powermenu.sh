#! /bin/sh

chosen=$(printf " 󰐥 \n 󰜉 \n 󰈆 " | rofi -dmenu -i -theme-str '@import ".config/rofi/scripts/powermenu.rasi"')

case "$chosen" in 
  " 󰐥 ") systemctl poweroff ;;
  " 󰜉 ") systemtcl reboot ;;
  " 󰈆 ") i3 exit ;;
  *) exit 1 ;;
esac
