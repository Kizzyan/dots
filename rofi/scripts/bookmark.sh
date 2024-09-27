#! /bin/sh

path="/home/yan/Archive/Notas/Alexandryte"

name=$(rofi -dmenu -i -p "󰃀 " -theme-str '@import ".config/rofi/scripts/bookmark_1.rasi"')

if [ -n "$name" ]; then
  author=$(rofi -dmenu -i -p " " -theme-str '@import ".config/rofi/scripts/bookmark_2.rasi"')
  tags=$(rofi -dmenu -i -p "󰓹 " -theme-str '@import ".config/rofi/scripts/bookmark_3.rasi"')
  tag=$(echo "$tags" | sed 's/^\(#\S*\).*/\1/')

  case "$tag" in 
    "#Manga")       icon=" ";;
    "#Documentary") icon=" ";;
    "#Game")        icon=" ";;
    "#Series")      icon=" ";;
    "#Book")        icon="󰂺 ";;
    "#Book")        icon="󰂺 ";;
    "#Video")       icon="󰗃 ";;
    "#Anime")       icon="󰤺 ";;
    "#Dorama")      icon="󰴂 ";;
    "#Movie")       icon="󰿎 ";;
    "#Movie")       icon="󰿎 ";;
    "#Tokusatsu")   icon="󱀣 ";;
    *) exit 1 ;;
  esac

  cat > "${path}/Notes/${name}.md" << EOF
- ** Author/Director:** ${author}
- ** Link:** []()
- ** Total:** 1
- **󰈈 Last seen:** 0
- **󰝪 Seasons:** ---
- **󰓎 Score:** 󰓎 
- **󰅺 Comment:** []()
- ** Drop reasons:** ---
- **󰄱 Created time:** $(date +%d/%m/%y)
- **󰄵 Completed:**
EOF
  sed -i "12i\- [ ] ${icon}[[${name}]]<br> *${author}*<br> --inserir imagem-- <br>${tags}" "${path}/Alexandryte.md"
fi
