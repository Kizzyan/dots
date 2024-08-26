#! /bin/sh


# Define search options
options="g\ny\nd"

# Use Rofi to select the search engine
selected=$(echo -e "$options" | rofi -dmenu -i -p " " -theme-str '@import ".config/rofi/scripts/websearch.rasi"')

# Set the search URL based on the selected search engine
case "$selected" in
    g)
        search_url="http://www.google.com/search?q="
        icon="  "
        ;;
    y)
        search_url="https://www.youtube.com/results?search_query="
        icon="  "
        ;;
    d)
        search_url="https://www.youtube.com/results?search_query="
        icon=" 󰇥 "
        ;;
    *)
        exit 1
        ;;
esac

# Prompt the user for the search query
query=$(rofi -dmenu -i -p "$icon " -theme-str '@import ".config/rofi/scripts/websearch.rasi"')

# Open the selected search engine with the query
if [ -n "$query" ]; then
    firefox "${search_url}${query}"
fi
