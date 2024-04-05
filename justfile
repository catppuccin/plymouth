build target:
  whiskers -f {{target}} plymouth.tera > themes/catppuccin-{{target}}/catppuccin-{{target}}.plymouth

  whiskers -f {{target}} bullet.tera | convert -background none - themes/catppuccin-{{target}}/bullet.png
  whiskers -f {{target}} capslock.tera | convert -background none - themes/catppuccin-{{target}}/capslock.png
  whiskers -f {{target}} entry.tera | convert -background none - themes/catppuccin-{{target}}/entry.png
  whiskers -f {{target}} keyboard.tera | convert -background none - themes/catppuccin-{{target}}/keyboard.png
  whiskers -f {{target}} lock.tera | convert -background none - themes/catppuccin-{{target}}/lock.png

  whiskers -f {{target}} --overrides \'\{\"active\":0\}\' throbber.tera | convert -background none - themes/catppuccin-{{target}}/throbber-0.png
  whiskers -f {{target}} --overrides \'\{\"active\":1\}\' throbber.tera | convert -background none - themes/catppuccin-{{target}}/throbber-1.png
  whiskers -f {{target}} --overrides \'\{\"active\":2\}\' throbber.tera | convert -background none - themes/catppuccin-{{target}}/throbber-2.png
  whiskers -f {{target}} --overrides \'\{\"active\":3\}\' throbber.tera | convert -background none - themes/catppuccin-{{target}}/throbber-3.png
  whiskers -f {{target}} --overrides \'\{\"active\":4\}\' throbber.tera | convert -background none - themes/catppuccin-{{target}}/throbber-4.png
  whiskers -f {{target}} --overrides \'\{\"active\":5\}\' throbber.tera | convert -background none - themes/catppuccin-{{target}}/throbber-5.png

preview: (p "frappe") (p "latte") (p "macchiato") (p "mocha")
  catwalk -C assets -r 10 -o preview.webp

p target:
  whiskers -f {{target}} preview.tera | convert -background none -quality 100% - assets/{{target}}.webp
  catwalk -C assets -r 10 {{target}}.webp {{target}}.webp {{target}}.webp {{target}}.webp -o {{target}}.webp