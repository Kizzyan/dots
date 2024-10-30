#! /bin/sh


options="g\ny\na\nw"
selected=$(printf "󰊭\n󰗃\n\n󰖬" | rofi -dmenu -i -theme-str '@import ".config/rofi/scripts/websearch_2.rasi"')

case "$selected" in
    "󰊭")
        search_url="http://www.google.com/search?q="
        icon="  "
        ;;
    "󰗃")
        search_url="https://www.youtube.com/results?search_query="
        icon="  "
        ;;
    "")
        search_url="https://www.amazon.com.br/s?k="
        icon="  "
        ;;
    "󰖬")
        search_url="https://en.wikipedia.org/wiki/"
        icon="  "
        ;;
    *)
        exit 1
        ;;
esac

query=$(rofi -dmenu -i -p "$icon " -theme-str '@import ".config/rofi/scripts/websearch_1.rasi"')

if [ -n "$query" ]; then
    firefox "${search_url}${query}"
fi
