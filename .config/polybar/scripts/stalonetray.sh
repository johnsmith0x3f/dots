#!/bin/sh

hidden="/tmp/stalonetray.hidden.lock"

# Requires stalonetray.
if pgrep -x stalonetray; then
	if [[ -e "$hidden" ]]; then
		polybar-msg action "#droptray.hook.1"
		xdo show -n stalonetray; rm "$hidden"
	else
		polybar-msg action "#droptray.hook.0"
		xdo hide -n stalonetray; touch "$hidden"
	fi
else
	polybar-msg action "#droptray.hook.1"
	stalonetray --background=#313131 \
	            --geometry=1x1+10+60 \
	            --grow-gravity=W \
	            --slot-size=32 \
	            --window-type=toolbar &
fi
