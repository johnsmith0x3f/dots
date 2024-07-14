#!/bin/sh

# Requires stalonetray.
if [[ $(pidof stalonetray) ]]; then
	polybar-msg action "#droptray.hook.0"
	killall stalonetray
else
	polybar-msg action "#droptray.hook.1"
	stalonetray --background=#313131 \
	            --geometry=1x1+10+55 \
	            --grow-gravity=W \
	            --slot-size=32 \
	            --window-type=toolbar &
fi
