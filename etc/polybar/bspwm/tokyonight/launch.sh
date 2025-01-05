#!/usr/bin/env bash

# Terminate running instances.
polybar-msg cmd quit

# Support 1920x and 2560x.
width="$( xrandr -q | grep "primary" | cut -d " " -f 4 | cut -d "x" -f 1 )"
if [[ $width -eq 1920 ]]; then
	config="${0%/*}/config-1920.ini"
else
	config="${0%/*}/config-2560.ini"
fi

# The order matters.
polybar -c "${config}" mbar -q &
polybar -c "${config}" rbar -q &

sleep 0.2

polybar -c "${config}" ubar -q &
