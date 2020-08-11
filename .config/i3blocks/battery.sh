#!/bin/sh
online=`cat /sys/class/power_supply/ADP1/online`
capacity=`cat /sys/class/power_supply/BAT0/capacity`

if [ $online = 1 ]; then
    state=
elif [ $capacity -gt 95 ]; then
    state=
elif [ $capacity -gt 63 ]; then
    state=
elif [ $capacity -gt 38 ]; then
    state=
elif [ $capacity -gt 10 ]; then
    state=
else 
    state=
fi

echo "$state ${capacity}%"
