local wezterm = require("wezterm")
local act = wezterm.action

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
	"KingHwa_OldSong"
})
config.font_size = 18

config.audible_bell = "Disabled"

-- Key bindings {{{

-- Disable default key bindings.
config.disable_default_key_bindings = true
-- Define custom key bindings.
config.keys = {
	{ key = "F11", mods = "NONE", action = act.ToggleFullScreen }
}

--- }}}

return config
