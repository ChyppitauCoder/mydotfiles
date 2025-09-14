#!/bin/bash
wtype 0
if [ $? -eq 0 ]
then
    if [ `sed '1,/^### DATA ###$/d' $0 | wofi --show dmenu` == "Copy in clipboard"]; then
        hyprshot -m output --clipboard-only
    fi
else
    if [ `sed '1,/^### DATA ###$/d' $0 | rofi --show dmenu` == "Save in pictures" ]; then 
        hyprshot -m output
    fi
fi
exit
### DATA ###
Copy in clipboard
Save in pictures