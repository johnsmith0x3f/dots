#!/usr/bin/env bash

launchr() {
	echo "TODO"
}

powmenu() {
	config="${XDG_CONFIG_HOME:-$HOME/.config}/rofi/powermenus/${1}.rasi"

	if [[ -f "$config" ]]; then
		choice="$(echo -e "\n\n" | rofi -dmenu -p "${USER}" -theme "${config}")"
	else
		exit 1
	fi

	case ${choice} in
		"") ;;
		"") ;;
		"") betterlockscreen -l;;
	esac
}

case ${1} in
	"-l") launchr ${2};;
	"-p") powmenu ${2};;
	*) echo "Syntax: launch.sh <-l|-p> <theme>";;
esac
