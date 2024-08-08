#!/usr/bin/env bash

polybar-msg cmd quit

dir="${0%/*}"

polybar -q -c "$dir/config.ini" ubar &
sleep 0.1
polybar -q -c "$dir/config.ini" lbar &
polybar -q -c "$dir/config.ini" rbar &
