local wibox     = require("wibox")
local beautiful = require("beautiful")
local helpers   = require("helpers")

local wifi      = wibox.widget {
  {
    forced_height = 18,
    forced_width  = 18,
    image         = beautiful.wifi_connected,
    widget        = wibox.widget.imagebox,
    id            = "image",
  },
  widget = wibox.container.place,
  valign = "center",
}

local bluetooth = wibox.widget {
  {
    forced_height = 18,
    forced_width  = 18,
    image         = beautiful.bluetooth_on,
    widget        = wibox.widget.imagebox,
    id            = "image",
  },
  widget = wibox.container.place,
  valign = "center",
}

awesome.connect_signal("signal::network", function(val)
  if val then
    wifi:get_children_by_id("image")[1].image = beautiful.wifi_connected
  else
    wifi:get_children_by_id("image")[1].image = beautiful.wifi_disconnected
  end
end)

awesome.connect_signal("signal::bluetooth", function(val)
  if val then
    bluetooth:get_children_by_id("image")[1].image = beautiful.bluetooth_on
  else
    bluetooth:get_children_by_id("image")[1].image = beautiful.bluetooth_off
  end
end)

local time = wibox.widget {
  {
    font = beautiful.sans .. " Light 14",
    format = "<b>" .. helpers.colorizeText("%I", beautiful.blue) .. "</b>" .. " : " .. helpers.colorizeText("%M", beautiful.fg),
    widget = wibox.widget.textclock
  },
  widget = wibox.container.place,
  valign = "center"
}

return wibox.widget {
  {
    {
      wifi,
      bluetooth,
      time,
      spacing = 10,
      layout = wibox.layout.fixed.horizontal,
    },
    widget = wibox.container.margin,
    margins = {
      top = 5,
      bottom = 5,
      left = 10,
      right = 10,
    },
  },
  shape = helpers.rrect(3),
  widget = wibox.container.background,
  bg = beautiful.altbg,
}
