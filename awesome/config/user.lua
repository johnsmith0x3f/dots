local awful = require('awful')

-- Specify user preferences for Awesome's behavior.
return {
  mod     = 'Mod4',
  tags    = { '1', '2', '3', '4', '5' },
  layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.floating,
  }
}
