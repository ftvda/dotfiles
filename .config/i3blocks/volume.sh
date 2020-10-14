#!/bin/sh

mute=`pactl list sinks \
	| sed -n '/State: \(RUNNING\|SUSPENDED\)/,/Volume/p' \
    | grep 'Mute' | sed 's/[[:space:]]//g' \
    | cut -d: -f2 | head -1`
[ $mute = "yes" ] && state= || state=
volume=`pactl list sinks \
	| sed -n '/State: \(RUNNING\|SUSPENDED\)/,/Volume/p' \
    | grep 'Volume' | grep -o '[0-9]*%' \
    | head -1 | tr -d '%'`
echo "$state ${volume}"
