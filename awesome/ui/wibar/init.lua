local awful = require('awful')
local wibox = require('wibox')

local module = require(... .. '.module')

return function(s)
	s.mypromptbox = awful.widget.prompt() -- Create a promptbox.

	-- Create the wibox
	s.mywibox = awful.wibar({
		position = "top",
		height   = 50,
		screen	 = s,
		widget	 = {
			layout = wibox.layout.align.horizontal,
			{
				widget = wibox.container.place,
				valign = "center",
			},
			nil,
			{
				{
					{
						module.time,
						spacing = 10,
						layout = wibox.layout.fixed.horizontal,
					},
					widget = wibox.container.place,
					valign = "center"
				},
				widget = wibox.container.margin,
				margins = {
					top    = 3,
					bottom = 3,
					left   = 15,
					right  = 15
				}
			}
		}
	})
end
