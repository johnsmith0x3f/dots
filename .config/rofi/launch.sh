#!/usr/bin/env bash

launchr() {
	dir="${XDG_CONFIG_HOME:-$HOME/.config}/rofi/launchers"
	config="$dir/$1.rasi"

	if [[ -f "$config" ]]; then
		rofi -config "$config" -show
	else
		echo "Avaliable themes:"
		for theme in $dir/*; do
			theme="${theme%.*}"
			echo "${theme##*/}"
		done
	fi
}

powmenu() {
	dir="${XDG_CONFIG_HOME:-$HOME/.config}/rofi/powermenus"
	config="$dir/$1.rasi"

	if [[ -f "$config" ]]; then
		choice="$(echo -e "\n\n\n\n" | rofi -dmenu -p "$USER" -theme "$config")"

		case "$choice" in
			"") betterlockscreen -l;;
			"") systemctl suspend;;
			"") systemctl hibernate;;
			"") notify-send "Reboot" "DO IT YOURSELF\!";;
			"") notify-send "Shutdown" "DO IT YOURSELF\!";;
		esac
	else
		echo "Avaliable themes:"
		for theme in $dir/*; do
			theme="${theme%.*}"
			echo "${theme##*/}"
		done
	fi
}

case "$1" in
	"-l") launchr $2;;
	"-p") powmenu $2;;
	*) echo "Syntax: launch.sh <-l|-p> <theme>";;
esac
