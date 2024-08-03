#!/usr/bin/env bash

dir="${XDG_CONFIG_HOME:-$HOME/.config}/rofi/powermenus"
choice="$(echo -e "\n\n" | rofi -dmenu -p "${USER}" -theme ${dir}/${1}.rasi)"

case ${choice} in
	"") betterlockscreen -l;;
	  *) echo "${choice}";;
esac
