#!/bin/sh

# Quit running bars.
pgrep -x polybar && polybar-msg cmd quit

dir="${0%/*}"
polybar -c "$dir/config.ini" -q &

