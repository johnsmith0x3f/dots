local awful = require("awful")
local gears = require("gears")

local function emit_bluetooth_status()
	awful.spawn.easy_async_with_shell(
		"bash -c 'bluetoothctl show | grep -i powered:'", function(stdout)
			local status = stdout:match("yes") -- boolean
			awesome.emit_signal("signal::bluetooth", status)
		end
	)
end

gears.timer {
	timeout   = 2,
	autostart = true,
	call_now  = true,
	callback  = function()
		emit_bluetooth_status()
	end
}
