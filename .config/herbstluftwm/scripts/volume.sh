#!/bin/bash

case $1 in
    down)
        pactl set-sink-volume @DEFAULT_SINK@ -5% 
        herbstclient emit_hook volume
        ;;
    up)
        pactl set-sink-volume @DEFAULT_SINK@ +5% 
        herbstclient emit_hook volume
        ;;
    mute)
        amixer -q set Master toggle
        herbstclient emit_hook volume_toggle
        ;;
esac

amixer get Master | grep '%' | dzen2 -p 1
