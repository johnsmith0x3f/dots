#!/usr/bin/env bash

config="$XDG_CONFIG_HOME/polybar/themes/$1/config.ini"

if [[ -f "$config" ]]; then
	polybar-msg cmd quit
	polybar -c "$config" &
else
	echo "Please choose a valid theme:"
	echo "$(ls $XDG_CONFIG_HOME/polybar/themes)"
fi
