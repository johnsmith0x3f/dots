#!/usr/bin/env bash

polybar-msg cmd quit

dir="${0%/*}"

polybar -c "$dir/config.ini" ubar -q &
sleep 0.1
polybar -c "$dir/config.ini" mbar -q &
polybar -c "$dir/config.ini" nbar -q &
polybar -c "$dir/config.ini" rbar -q &
