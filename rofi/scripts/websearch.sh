#! /bin/sh


# Define search options
options="g\ny\nw"

# Use Rofi to select the search engine
# selected=$(echo -e "$options" | rofi -dmenu -i -p " " -theme-str '@import ".config/rofi/scripts/websearch2.rasi"')
selected=$(printf "󰊭\n󰗃\n󰖬" | rofi -dmenu -i -theme-str '@import ".config/rofi/scripts/websearch2.rasi"')

# Set the search URL based on the selected search engine
case "$selected" in
    "󰊭")
        search_url="http://www.google.com/search?q="
        icon="  "
        ;;
    "󰗃")
        search_url="https://www.youtube.com/results?search_query="
        icon="  "
        ;;
    "󰖬")
        search_url="https://en.wikipedia.org/wiki/"
        icon="  "
        ;;
    *)
        exit 1
        ;;
esac

# Prompt the user for the search query
query=$(rofi -dmenu -i -p "$icon " -theme-str '@import ".config/rofi/scripts/websearch1.rasi"')

# Open the selected search engine with the query
if [ -n "$query" ]; then
    firefox "${search_url}${query}"
fi
