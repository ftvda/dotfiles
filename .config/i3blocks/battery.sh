#!/bin/sh
online=`cat /sys/class/power_supply/ADP1/online`
capacity=`cat /sys/class/power_supply/BAT0/capacity`

if [ $online = 1 ]; then
    state=
elif [ $capacity -gt 95 ]; then
    state=
elif [ $capacity -gt 75 ]; then
    state=
elif [ $capacity -gt 50 ]; then
    state=
elif [ $capacity -gt 25 ]; then
    state=
else 
    state=
fi

echo "$state ${capacity}%"
