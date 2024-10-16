#!/bin/sh

if [ "$(systemctl is-active "bluetooth.service")" = "active" ]; then
	if bluetoothctl show | grep -q "PowerState: on"; then
		echo -e "󰂱"
	else
		echo -e "󰂯"
	fi
	exit 0
else
	echo -e "󰂲"
	exit 1
fi
