#! /bin/sh

chosen=$(printf "󰐥 Power Off\n󰜉 Restart\n󰈆 Exit" | rofi -dmenu -i -theme-str '@import ".config/rofi/scripts/powermenu.rasi"')

case "$chosen" in 
  "󰐥 Power Off") systemctl poweroff ;;
  "󰜉 Restart") systemtcl reboot ;;
  "󰈆 Exit") i3 exit ;;
  *) exit 1 ;;
esac
