#!/usr/bin/env bash

# Terminate running instances.
polybar-msg cmd quit

dir="${0%/*}"

# The order matters.
polybar -c "$dir/config.ini" mbar -q &
polybar -c "$dir/config.ini" nbar -q &
polybar -c "$dir/config.ini" rbar -q &

sleep 0.1

polybar -c "$dir/config.ini" ubar -q &
