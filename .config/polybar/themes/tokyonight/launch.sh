#!/usr/bin/env bash

# Terminate running instances.
polybar-msg cmd quit

# Support 1920x1080 and 2560x1440.
width="$( xrandr -q | grep "primary" | cut -d " " -f 4 | cut -d "x" -f 1 )"
if [[ $width -eq 1920 ]]; then
	config="${0%/*}/config-1920x1080.ini"
else
	config="${0%/*}/config-2560x1440.ini"
fi

# The order matters.
polybar -c "${config}" mbar -q &
polybar -c "${config}" rbar -q &

sleep 0.2

polybar -c "${config}" ubar -q &
