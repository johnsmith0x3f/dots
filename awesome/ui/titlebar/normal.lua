local awful = require('awful')
local wibox = require('wibox')

--- The titlebar to be used on normal clients.
return function(c)
  -- Buttons for the titlebar.
  local buttons = {
    awful.button(nil, 1, function()
      c:activate({ context = 'titlebar', action = 'mouse_move' })
    end),
    awful.button(nil, 3, function()
      c:activate({ context = 'titlebar', action = 'mouse_resize' })
    end)
  }

  -- Draws the client titlebar at the default position (top) and size.
  awful.titlebar(c, { size = 40 }).widget = wibox.widget({
    layout = wibox.layout.align.horizontal,
    -- Left
    {
      layout = wibox.layout.fixed.horizontal,
      {
        awful.titlebar.widget.iconwidget(c),
        widget = wibox.container.margin,
        margins = 8,
      },
      buttons = buttons
    },
    nil,
    -- Right
    {
      {
        layout = wibox.layout.fixed.horizontal,
        spacing = 10,
        awful.titlebar.widget.maximizedbutton(c),
        awful.titlebar.widget.closebutton(c)
      },
      widget = wibox.container.margin,
      margins = 8,
    }
  })
end
