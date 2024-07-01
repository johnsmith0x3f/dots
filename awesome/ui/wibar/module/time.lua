local beautiful = require("beautiful")
local helpers = require("helpers")
local wibox = require("wibox")

return wibox.widget {
	{
		font = beautiful.sans .. "Light 15",
		format = "<b>" .. helpers.colorizeText("%H", beautiful.blue) .. "</b> : " .. helpers.colorizeText("%M", beautiful.fg),
		widget = wibox.widget.textclock,
	},
	widget = wibox.container.place,
	valign = "center"
}
