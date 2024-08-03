#!/usr/bin/env bash

dir="$XDG_CONFIG_HOME/polybar/themes"
config="themes/$1/config.ini"

if [[ -f "$config" ]]; then
	polybar-msg cmd quit
	polybar -c "$config" &
else
	echo "Available themes:"
	for theme in $dir/*/; do
		theme="${theme%/*}"
		echo "${theme##*/}"
	done
fi
