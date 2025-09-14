#!/bin/bash
wtype 0
if [ $? -eq 0 ]
then
    if [ sed '1,/^### DATA ###$/d' $0 | rofi -dmenu | cut -d ' ' -f 1 | tr -d '\n' == "Copy in clipboard"]; then
        hyprshot -m output --clipboard-only
    fi
else
    if [ sed '1,/^### DATA ###$/d' $0 | rofi -dmenu | cut -d ' ' -f 1 | tr -d '\n' | wl-copy ]; then 
        hyprshot -m output
    fi
fi
exit
### DATA ###
Copy in clipboard
Save in pictures