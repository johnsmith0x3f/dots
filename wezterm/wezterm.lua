local wezterm = require("wezterm")

local config = {}

-- Colors & Appearance.
config.color_scheme = "Tokyo Night Storm"

config.enable_tab_bar = false

config.window_padding = {
	left   = "32px",
	right  = "32px",
	top    = "32px",
	bottom = "32px"
}

-- Fonts.
config.font = wezterm.font_with_fallback({
	"OperatorMono Nerd Font Mono",
	"WenQuanYi Micro Hei"
})
config.font_size = 18

return config
