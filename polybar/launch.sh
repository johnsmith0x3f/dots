#!/usr/bin/env bash

config="$HOME/.dots/polybar/themes/$1/config.ini"

if [[ -f "$config" ]]; then
	polybar-msg cmd quit
	polybar -c "$config" -q &
else
	echo "Fuck!"
fi
