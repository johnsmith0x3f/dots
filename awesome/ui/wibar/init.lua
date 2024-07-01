local awful = require('awful')
local wibox = require('wibox')

local module = require(... .. '.module')

return function(s)
	s.mypromptbox = awful.widget.prompt() -- Create a promptbox.

	-- Create the wibox
	s.mywibox = awful.wibar({
		position = 'top',
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
				widget = wibox.container.place,
				valign = "center",
			}
		}
	})
end
