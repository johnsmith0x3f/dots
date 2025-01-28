#!/bin/sh

if [ "$( systemctl is-active "bluetooth.service" )" != "active" ]; then
	echo "󰂲"; exit 1
fi

if ! bluetoothctl show | grep -q "PowerState: on"; then
	echo "󰂯"; exit 1
fi

if ! bluetoothctl info | grep -q "Connected: yes"; then
	echo "󰂯"; exit 0
fi

dev="$( bluetoothctl devices "Connected" | head -n 1 )"
echo "󰂱 ${dev:25}"
