if [[ "$(cmd=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | cut -d "." -f 2) && echo $cmd | grep 'MUTED')" \
       	== "$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | cut -d "." -f 2 | cut -d "[" -f 1)[MUTED]" ]]; then 
	notify-send "Muted";
else
	notify-send "Unmuted";
fi
