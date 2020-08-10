#!/bin/sh

mute=`pactl list sinks \
    | grep 'Mute' | sed 's/[[:space:]]//g' \
    | cut -d: -f2 | head -1`
[ $mute = "yes" ] && state= || state=
volume=`pactl list sinks \
    | grep 'Volume' | grep -o '[0-9]*%' \
    | head -1 | tr -d '%'`
echo "$state ${volume}%"
