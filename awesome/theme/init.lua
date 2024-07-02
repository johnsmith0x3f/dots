-- Theme handling library.
local beautiful = require("beautiful")
-- Standard awesome library.
local gears = require("gears")

-- Themes define colors, icons, font and wallpapers.

local theme = {}
theme.wallpaper = gears.filesystem.get_configuration_dir() .. "theme/wall.png"

-- Set default font options.
theme.font = "Lexend"
theme.sans = "Lexend"
theme.mono = "Iosevka Nerd Font"
-- Set colors.
theme.bg          = "#181818"
theme.altbg       = "#212121"
theme.fg          = "#F8F8F8"
theme.comment     = "#585858"
theme.red         = "#AB4642"
theme.blue        = "#7CAFC2"
theme.green       = "#A1B56C"
theme.yellow      = "#F7CA88"
theme.magenta     = "#BA8BAF"
theme.cyan        = "#86C1B9"

theme.useless_gap = 5

beautiful.init(theme)
