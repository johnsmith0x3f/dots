local wibox     = require("wibox")
local beautiful = require("beautiful")
local helpers   = require("helpers")

return wibox.widget {
	{
		font = beautiful.sans .. "Light 15",
		format = "%H : %M",
		widget = wibox.widget.textclock,
	},
	widget = wibox.container.place,
	valign = "center"
}
