local wibox = require("wibox")
local helpers = require("helpers")
local beautiful = require("beautiful")


return wibox.widget {
  {
    forced_height = 30,
    forced_width  = 30,
    image         = beautiful.pfp,
    clip_shape    = helpers.rrect(100),
    widget        = wibox.widget.imagebox,
    id            = "image",
  },
  widget = wibox.container.place,
  valign = "center",
}
