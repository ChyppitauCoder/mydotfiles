#!/bin/bash
wtype 0
if [ $? -eq 0 ]
then
    wofi_menu=$(sed '1,/^### DATA ###$/d' $0 | wofi --show dmenu);
    if [[ "$wofi_menu" == "Copy in clipboard" ]]; then
        hyprshot -m output --clipboard-only
    fi
else
    if [[ "$wofi_menu" == "Save in pictures" ]]; then 
        hyprshot -m output
    fi
fi
exit
### DATA ###
Copy in clipboard
Save in pictures