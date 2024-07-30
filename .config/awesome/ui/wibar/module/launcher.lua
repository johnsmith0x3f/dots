local wibox = require("wibox")
local helpers = require("helpers")
local beautiful = require("beautiful")

return wibox.widget {
  {
    {
      forced_height = 22,
      forced_width = 22,
      shape = helpers.rrect(100),
      widget = wibox.container.background,
      bg = beautiful.blue .. '33'
    },
    widget = wibox.container.margin,
    margins = 6,
  },
  shape = helpers.rrect(100),
  widget = wibox.container.background,
  bg = beautiful.altbg
}
