#!/usr/bin/env bash

dir="${XDG_CONFIG_HOME:-${HOME}/.config}/polybar/themes"
script="$dir/${1}/launch.sh"

if [[ -f "${script}" ]]; then
	bash "${script}"
else
	echo "Available themes:"
	for theme in ${dir}/*/; do
		theme="${theme%/*}"
		echo "${theme##*/}"
	done
fi
