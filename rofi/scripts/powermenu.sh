#! /bin/sh

chosen=$(printf "󰐥 Power Off\n󰜉 Restart\n󰈆 Exit" | rofi -dmenu -i -theme-str '@import ".config/rofi/scripts/powermenu.rasi"')

case "$chosen" in 
  " 󰐥 ") systemctl poweroff ;;
  " 󰜉 ") systemtcl reboot ;;
  " 󰈆 ") i3 exit ;;
  *) exit 1 ;;
esac
