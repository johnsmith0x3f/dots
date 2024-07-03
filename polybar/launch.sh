#!/usr/bin/env bash

polybar-msg cmd quit

config="~/.dots/polybar/themes/$1/config.ini"

if [[ -f $config ]]; then
	polybar -c $config -q &
else
	echo "Fuck!"
fi
