#!/usr/bin/env bash

polybar-msg cmd quit

dir="${0%/*}"

polybar -c "$dir/config.ini" ubar &

sleep 0.1

polybar -c "$dir/config.ini" mbar &
polybar -c "$dir/config.ini" rbar &
