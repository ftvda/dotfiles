#!/bin/sh

if [ -d /sys/class/power_supply/BAT0 ]; then
	online=`cat /sys/class/power_supply/AC/online 2>/dev/null`
	capacity=`cat /sys/class/power_supply/BAT0/capacity 2>/dev/null`

	if [ "$online" = 1 ]; then
		state=
	elif [ "$capacity" -gt 95 ]; then
		state=
	elif [ "$capacity" -gt 63 ]; then
		state=
	elif [ "$capacity" -gt 38 ]; then
		state=
	elif [ "$capacity" -gt 10 ]; then
		state=
	else 
		state=
	fi

	echo "$state ${capacity}"
fi
