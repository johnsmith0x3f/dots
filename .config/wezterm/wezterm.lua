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
	"Operator Mono",
	"FiraMono Nerd Font Mono",
	"Source Han Sans CN Medium"
})
config.font_size = 18

config.audible_bell = "Disabled"

return config
