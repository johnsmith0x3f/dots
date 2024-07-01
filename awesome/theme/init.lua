-- Theme handling library.
local beautiful = require("beautiful")
-- Standard awesome library.
local gears     = require("gears")

-- Themes define colors, icons, font and wallpapers.

local theme = {}
theme.wallpaper = gears.filesystem.get_configuration_dir() .. "theme/wall.jpg"
local theme       = {}

theme.sans        = "Lexend"
theme.font        = "Lexend"
theme.mono        = "Iosevka Nerd Font"

theme.bg          = "#181818"
theme.altbg       = "#212121"
theme.fg          = "#f8f8f8"
theme.comment     = "#585858"
theme.red         = "#ab4642"
theme.blue        = "#7cafc2"
theme.green       = "#a1b56c"
theme.yellow      = "#f7ca88"
theme.magenta     = "#ba8baf"
theme.cyan        = "#86c1b9"

theme.useless_gap = 5

beautiful.init(theme)
