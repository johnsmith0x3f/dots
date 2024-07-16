local wezterm = require("wezterm")

local config = {}

-- No tab bar, simplicity is the best.
config.enable_tab_bar = false

-- Colors & Appearance.
config.color_scheme = "Tokyo Night Storm"

config.window_padding = {
	left   = "32px",
	bottom = "32px",
	top    = "32px",
	right  = "32px",
}

-- Fonts.
config.font = wezterm.font_with_fallback({
	"OperatorMono Nerd Font Mono",
	"Noto Sans CJK SC"
})
config.font_size = 18

return config
