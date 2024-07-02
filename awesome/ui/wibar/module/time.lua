local beautiful = require("beautiful")
local helpers = require("helpers")
local wibox = require("wibox")

return wibox.widget {
	{
		font = beautiful.sans .. "Black 15",
		format = "<span foreground='" .. beautiful.blue .. "'>%H</span> : %M",
		widget = wibox.widget.textclock,
	},
	widget = wibox.container.place,
	valign = "center"
}
