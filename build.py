#!/usr/bin/env python3

import json
import os
import urllib.request

def main():
  with urllib.request.urlopen('https://raw.githubusercontent.com/catppuccin/palette/v0.2.0/palette.json') as f:
    data = f.read().decode('utf-8')
    colors = json.loads(data)

  for theme in ["latte", "frappe", "macchiato", "mocha"]:
    # create mapping
    colormap = {}
    for color in colors["macchiato"]:
      colormap[colors["macchiato"][color]["hex"]] = colors[theme][color]["hex"]

    # delete old files
    for file in os.listdir(f"themes/catppuccin-{theme}"):
      if file.endswith(".png"):
        os.remove(f"themes/catppuccin-{theme}/{file}")

    # create new files
    for file in os.listdir("src"):
      print(f"converting {theme} {file}")
      with open(f"src/{file}") as source:
        svg = source.read()
      for color in colormap:
        svg = svg.replace(color, colormap[color])
      with open("tmp.svg", "w") as tmp:
        tmp.write(svg)

      if file == "preview.svg":
        os.system(f'convert -background none "tmp.svg" "assets/{theme}.png"')
      else:
        os.system(f'convert -background none "tmp.svg" "themes/catppuccin-{theme}/{file.removesuffix(".svg")}.png"')

  # cleanup
  os.remove("tmp.svg")

  # create previews
  os.system("python3 -m catwalk -o assets/preview.png assets/latte.png assets/frappe.png assets/macchiato.png assets/mocha.png")
  os.system("python3 -m catwalk -o assets/latte.png assets/latte.png assets/latte.png assets/latte.png assets/latte.png")
  os.system("python3 -m catwalk -o assets/frappe.png assets/frappe.png assets/frappe.png assets/frappe.png assets/frappe.png")
  os.system("python3 -m catwalk -o assets/macchiato.png assets/macchiato.png assets/macchiato.png assets/macchiato.png assets/macchiato.png")
  os.system("python3 -m catwalk -o assets/mocha.png assets/mocha.png assets/mocha.png assets/mocha.png assets/mocha.png")

if __name__ == "__main__":
  main()
