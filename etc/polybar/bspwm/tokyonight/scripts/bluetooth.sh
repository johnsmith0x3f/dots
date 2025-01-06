#!/bin/bash

if [[ "$( systemctl is-active "bluetooth.service" )" == "active" ]]; then
	bluetoothctl show | grep --quiet "PowerState: on" && {
		bluetoothctl info | grep --quiet "Connected: yes" && {
			echo "󰂱"; exit 0
		} || {
			echo "󰂯"; exit 0
		}
	} || {
		echo "󰂯"; exit 1
	}
else
	echo "󰂲"; exit 1
fi
