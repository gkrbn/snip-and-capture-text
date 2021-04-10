rm /tmp/ksnip*.png
ksnip -r -s
mogrify -modulate 100,0 -resize 400% -contrast -contrast-stretch 10 /tmp/ksnip.png;
tesseract /tmp/ksnip.png stdout

