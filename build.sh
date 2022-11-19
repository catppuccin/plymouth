#!/bin/bash

mkdir build

curl -o build/palette.json https://raw.githubusercontent.com/catppuccin/palette/main/palette.json

for theme in latte frappe macchiato mocha
do
  oldcolors=()
  newcolors=()

  while read color
  do
    oldcolors+=( "$(cat build/palette.json | jq -r .macchiato.$color.hex)" )
    newcolors+=( "$(cat build/palette.json | jq -r .$theme.$color.hex)" )
  done < <(cat build/palette.json | jq -cr '.frappe|keys|.[]')

  rm themes/catppuccin-$theme/*.png

  for file in src/*.svg
  do
    name="$(basename "$file" .svg)"
    cp "$file" "build/tmp.svg"

    for i in "${!oldcolors[@]}"
    do
      sd -s "\"${oldcolors[$i]}\"" "\"${newcolors[$i]}\"" "build/tmp.svg"
    done

    if [ "$name" == "preview" ]
    then
      convert -background none "build/tmp.svg" "assets/$theme.png"
    else
      convert -background none "build/tmp.svg" "themes/catppuccin-$theme/$name.png"
    fi
  done
done

rm -r build

python3 -m catwalk -o assets/preview.png assets/latte.png assets/frappe.png assets/macchiato.png assets/mocha.png
python3 -m catwalk -o assets/latte.png assets/latte.png assets/latte.png assets/latte.png assets/latte.png
python3 -m catwalk -o assets/frappe.png assets/frappe.png assets/frappe.png assets/frappe.png assets/frappe.png
python3 -m catwalk -o assets/macchiato.png assets/macchiato.png assets/macchiato.png assets/macchiato.png assets/macchiato.png
python3 -m catwalk -o assets/mocha.png assets/mocha.png assets/mocha.png assets/mocha.png assets/mocha.png