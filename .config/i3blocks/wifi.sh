#!/bin/sh

INTERFACE=$(grep up /sys/class/net/*/operstate | sed 's!/operstate:up$!!;s!^.*/!!')

if [ -z $INTERFACE ]; then
    echo  down
    exit
fi

if [ -d /sys/class/net/${INTERFACE}/wireless ]; then
	label=
	ssid=`nmcli dev | grep wifi | grep connected | awk '{print $4}'`
	quality=`nmcli dev wifi | grep $ssid | awk '{print $8}'`
	echo "$label $ssid: $quality%" 
else 
	label=
	ssid='ethernet'
	echo "$label"
fi



