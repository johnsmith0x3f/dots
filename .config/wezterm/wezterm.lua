local wezterm = require("wezterm")
local act = wezterm.action

local config = {}

-- No tab bar, simplicity is the best.
config.enable_tab_bar = false

-- Colors & Appearance.
config.color_scheme = "Tokyo Night Storm"

local padding = "48px"
config.window_padding = {
	left = padding, bottom = padding, top = padding, right = padding
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
	{ key = "C", mods = "SHIFT|CTRL", action = act.CopyTo "Clipboard" },
	{ key = "V", mods = "SHIFT|CTRL", action = act.PasteFrom "Clipboard" },
--	{ key = "F11", mods = "NONE", action = act.ToggleFullScreen }
}

--- }}}

return config
