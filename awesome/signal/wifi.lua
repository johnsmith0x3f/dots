local awful = require("awful")
local gears = require("gears")

local function emit_network_status()
	awful.spawn.easy_async_with_shell(
		"bash -c 'nmcli networking connectivity check'", function(stdout)
			local status = not stdout:match("none") -- boolean
			awesome.emit_signal("signal::network", status)
		end
	)
end

gears.timer {
	timeout   = 2,
	autostart = true,
	call_now  = true,
	callback  = function()
		emit_network_status()
	end
}
