#!/bin/sh

INTERFACE=wlp3s0

[ ! -d /sys/class/net/${INTERFACE}/wireless ] && exit

if [ ! "$(cat /sys/class/net/$INTERFACE/operstate)" = 'up' ]; then
    echo  down
    exit
fi

ssid=`nmcli dev | grep connected | awk '{print $4}'`
quality=`nmcli dev wifi | grep $ssid | awk '{print $8}'`

echo " $ssid: $quality%" 
