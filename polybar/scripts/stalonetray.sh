#!/bin/sh

hidden="/tmp/stalonetrayhide.lock"

# Requires stalonetray and xdo.
if [[ $(pidof stalonetray) ]]; then
	if [[ -e $hidden ]]; then
		polybar-msg action "#droptray.hook.1"
		xdo show -n stalonetray
		rm "$hidden"
	else
		polybar-msg action "#droptray.hook.0"
		xdo hide -n stalonetray
		touch "$hidden"
	fi
else
	stalonetray --background=#313131 --geometry=1x1+10+55 --slot-size=32 --window-type=normal &

fi
