#!/bin/bash

# Quit running instances.
polybar-msg cmd quit

# Support 1920x and 2560x screens.
config="${0%/*}/config-$( xrandr -q | grep "*" | grep -Eo "(1920|2560)" ).ini"

# The order matters.
polybar -c "$config" mbar -q &
polybar -c "$config" rbar -q &

sleep 0.2

polybar -c "$config" ubar -q &
