local wibox = require("wibox")
return wibox.widget {
  {
    base_size = 22,
    widget = wibox.widget.systray,
  },
  widget = wibox.container.place,
  valign = "center",
}
