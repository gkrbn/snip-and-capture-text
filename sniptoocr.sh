rm /tmp/ksnip*.png
ksnip -r -s
stop=0
c=0
while [[ $stop -eq 0 ]];
do
    echo $stop
    if  [[ -e /tmp/ksnip.png ]]; then
        break
    fi
    sleep .5
    c+=1
done

mogrify -modulate 100,0 -resize 400% -contrast -contrast-stretch 10 /tmp/ksnip.png;
tesseract /tmp/ksnip.png stdout


