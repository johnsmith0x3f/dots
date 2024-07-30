#!/usr/bin/env bash

config="$XDG_CONFIG_HOME/polybar/themes/$1/config.ini"

if [[ -f "$config" ]]; then
	polybar-msg cmd quit
	polybar -c "$config" &
else
	echo "Please specify one of the following themes:"
	for theme in $XDG_CONFIG_HOME/polybar/themes/*/; do
		theme="${theme%/}"
		echo "${theme##*/}"
	done
fi
