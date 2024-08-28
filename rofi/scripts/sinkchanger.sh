#! /bin/sh

chosen=$(printf " 󰋋 \n  " | rofi -dmenu -i -theme-str '@import ".config/rofi/scripts/sinkchanger.rasi"')

case "$chosen" in 
  " 󰋋 ") pactl set-default-sink $(pactl list short sinks | grep -i 'analog' | awk '{ print $1 }') ;;
  "  ") pactl set-default-sink $(pactl list short sinks | grep -i 'hdmi' | awk '{ print $1 }');;
  *) exit 1 ;;
esac
