#!/bin/sh

if [ "$( systemctl is-active "bluetooth.service" )" != "active" ]; then
	echo "󰂲"; exit 1
fi

if ! bluetoothctl show | grep -q "PowerState: on"; then
	echo "󰂯"; exit 1
fi

bluetoothctl info | grep -q "Connected: yes" && echo "󰂱" || echo "󰂯"

