local awful = require('awful')
local beautiful = require('beautiful')
local wibox = require('wibox')
local helpers = require('helpers')

local module = require(... .. '.module')

return function(s)
  s.mywibox = awful.wibar({
    position = 'top',
    height   = 50,
    width    = 1920,
    screen   = s,
    widget   = {
      layout = wibox.layout.align.horizontal,
      {
        {
          {
            module.launcher,
            module.taglist(s),
            module.layout,
            spacing = 20,

            layout = wibox.layout.fixed.horizontal,
          },
          widget = wibox.container.place,
          valign = "center",
        },
        widget = wibox.container.margin,
        margins = {
          left = 10,
          right = 10,
          top = 3,
          bottom = 3
        },
      },
      nil,
      {
        {
          {
            module.systray,
            module.time,
            module.progress,
            module.profile,
            spacing = 20,
            layout = wibox.layout.fixed.horizontal,
          },
          widget = wibox.container.place,
          valign = "center",
        },
        widget = wibox.container.margin,
        margins = {
          left = 10,
          right = 10,
          top = 3,
          bottom = 3
        },
      },
    }
  })
end
