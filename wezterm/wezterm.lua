local wezterm = require("wezterm")

local config = {}

-- Colors & Appearance.
config.color_scheme = "Tokyo Night Storm"

config.enable_tab_bar = false

config.window_padding = {
	left = "32px",
	right = "32px",
	top = "32px",
	bottom = "32px"
}

-- Fonts.
config.font = wezterm.font("OperatorMono Nerd Font Mono")
config.font_size = 15

return config
