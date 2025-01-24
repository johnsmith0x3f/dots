#!/bin/bash

# Quit running instances using IPC command.
polybar-msg cmd quit

# Pass the CWD to polybar.
export dir="${0%/*}"

# Use different config for different width.
config="${dir}/config-$( xrandr -q | grep "*" | grep -Eo "(1920|2560)" ).ini"

# Invoke the bars. Order matters.
polybar -c "$config" mbar -q &
polybar -c "$config" rbar -q &
sleep 0.2
polybar -c "$config" ubar -q &
