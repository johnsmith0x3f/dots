local wezterm = require("wezterm")

local config = {}

-- Colors & Appearance.
config.color_scheme = "Tokyo Night Storm"

config.enable_tab_bar = false

-- Fonts.
config.font = wezterm.font("OperatorMono Nerd Font Mono")
config.font_size = 15

return config
