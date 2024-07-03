local wibox = require("wibox")
local helpers = require("helpers")
local beautiful = require("beautiful")
local awful = require("awful")

local battery = wibox.widget {
  {
    {
      bg = beautiful.fg .. "99",
      forced_height = 10,
      forced_width = 2,
      shape = helpers.rrect(10),
      widget = wibox.container.background,
    },
    widget = wibox.container.place,
    valign = "center",
  },
  {
    {
      max_value        = 100,
      value            = 69,
      id               = "prog",
      forced_height    = 22,
      forced_width     = 45,
      paddings         = 3,
      border_color     = beautiful.fg .. "99",
      background_color = beautiful.altbg,
      bar_shape        = helpers.rrect(3),
      color            = beautiful.green,
      border_width     = 1.25,
      shape            = helpers.rrect(5),
      widget           = wibox.widget.progressbar
    },
    direction = 'south',
    layout    = wibox.container.rotate,

  },
  spacing = 3,
  layout = wibox.layout.fixed.horizontal
}
awesome.connect_signal("signal::battery", function(value)
  local b = battery:get_children_by_id("prog")[1]
  b.value = value
end)

local volume = wibox.widget {
  {
    max_value     = 100,
    value         = 69,
    id            = "prog",
    forced_height = 23,
    forced_width  = 23,
    bg            = beautiful.altbg,
    bar_shape     = helpers.rrect(3),
    colors        = { beautiful.blue },
    border_width  = 0,
    thickness     = 3.2,
    shape         = helpers.rrect(5),
    widget        = wibox.container.arcchart
  },
  widget = wibox.container.place,
  valign = "center",
}
awesome.connect_signal("signal::volume", function(value)
  local v = volume:get_children_by_id("prog")[1]
  v.value = value
end)


return wibox.widget {
  {
    battery,
    volume,
    spacing = 20,
    layout = wibox.layout.fixed.horizontal,
  },
  widget = wibox.container.place,
  valign = "center",
}
