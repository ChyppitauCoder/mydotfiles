#!/bin/bash
wtype 0
if [ $? -eq 0 ]
then
    sed '1,/^### DATA ###$/d' $0 | wofi -dmenu | cut -d ' ' -f 1 | tr -d '\n' | wtype 
else
    sed '1,/^### DATA ###$/d' $0 | wofi -dmenu | cut -d ' ' -f 1 | tr -d '\n' | wl-copy
fi
exit
### DATA ###
Copy in clipboard
Save in pictures