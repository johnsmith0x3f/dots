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
	stalonetray --background="#24283B" \
	            --geometry="1x1+270+60" \
	            --kludges="force_icons_size" \
	            --slot-size=32 \
	            --window-type="toolbar" \
							--vertical=true &
fi
