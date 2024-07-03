-- Theme handling library
local beautiful                                 = require('beautiful')
-- Standard awesome library
local gears                                     = require('gears')

local theme                                     = {}

theme.sans                                      = "Lexend"
theme.font                                      = "Lexend"
theme.mono                                      = "Iosevka Nerd Font"

theme.bg                                        = "#141414"
theme.altbg                                     = "#222222"
theme.fg                                        = "#f8f8f8"
theme.comment                                   = "#585858"
theme.red                                       = "#ab4642"
theme.blue                                      = "#7cafc2"
theme.green                                     = "#a1b56c"
theme.yellow                                    = "#f7ca88"
theme.magenta                                   = "#ba8baf"
theme.cyan                                      = "#86c1b9"

theme.taglist_bg_focus                          = theme.blue
theme.taglist_bg_empty                          = theme.comment
theme.taglist_bg_occupied                       = theme.comment
theme.taglist_bg_urgent                         = theme.red

theme.useless_gap                               = 5

theme.wallpaper                                 = gears.filesystem.get_configuration_dir() .. 'theme/wall.jpg'
theme.pfp                                       = gears.filesystem.get_configuration_dir() .. 'theme/pfp.jpeg'

theme.iconpath                                  = gears.filesystem.get_configuration_dir() .. "theme/icons/"

theme.layout_floating                           = theme.iconpath .. "floating.png"
theme.layout_tile                               = theme.iconpath .. "tile.png"

theme.wifi_connected                            = gears.color.recolor_image(theme.iconpath .. "wifi-connected.svg",
  theme.fg)
theme.wifi_disconnected                         = gears.color.recolor_image(theme.iconpath .. "wifi-disconnected.svg",
  theme.comment)

theme.bluetooth_on                              = gears.color.recolor_image(theme.iconpath .. "bluetooth-on.svg",
  theme.fg)
theme.bluetooth_off                             = gears.color.recolor_image(theme.iconpath .. "bluetooth-off.svg",
  theme.comment)

theme.titlebar_close_button_normal              = gears.color.recolor_image(theme.iconpath .. "close.svg",
  theme.comment)
theme.titlebar_close_button_focus               = gears.color.recolor_image(theme.iconpath .. "close.svg",
  theme.red)

theme.titlebar_maximized_button_normal_inactive = gears.color.recolor_image(
  theme.iconpath .. "maximize.svg",
  theme.comment)
theme.titlebar_maximized_button_focus_inactive  = gears.color.recolor_image(
  theme.iconpath .. "maximize.svg",
  theme.blue)
theme.titlebar_maximized_button_normal_active   = gears.color.recolor_image(
  theme.iconpath .. "maximize.svg",
  theme.comment)
theme.titlebar_maximized_button_focus_active    = gears.color.recolor_image(
  theme.iconpath .. "maximize.svg",
  theme.blue)
-- Themes define colors, icons, font and wallpapers.
beautiful.init(theme)
beautiful.init(theme)

