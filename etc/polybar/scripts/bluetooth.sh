#!/bin/sh

# Branch if the service is inactive.
if [ "$( systemctl is-active "bluetooth.service" )" != "active" ]; then
	echo "󰂲"; exit 1
fi

# Branch if bluetooth is turned off.
if ! bluetoothctl show | grep -q "PowerState: on"; then
	echo "󰂯"; exit 1
fi

# Branch if no device is connected.
if ! bluetoothctl info | grep -q "Connected: yes"; then
	echo "󰂯"; exit 0
fi

# Get the name of the connected device.
dev="$( bluetoothctl devices Connected | head -n 1 )"
# Output the content to show on the bar.
echo "󰂱 ${dev:25}"
