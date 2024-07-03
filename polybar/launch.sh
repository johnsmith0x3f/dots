#!/usr/bin/env bash

polybar-msg cmd quit

config="$XDG_CONFIG_HOME/polybar/themes/$1/config.ini"

if [[ -n $1 ]] && [[ -f $config ]]; then
	polybar -c $config -q &
else
	echo "Fuck!"
fi
