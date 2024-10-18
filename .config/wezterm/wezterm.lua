-- Pull the wezterm API.
local wezterm = require("wezterm")
local act = wezterm.action

-- Put your configurations onto the table!
local config = {}

-- Fits the interior.
config.use_fancy_tab_bar = false
-- No scroll bar. Keep it simple.
config.enable_scroll_bar = false

-- Use Tokyo Night colorscheme.
config.color_scheme = "Tokyo Night Storm"

local padding = "72px"
config.window_padding = {
	left = padding,
	bottom = padding,
	top = padding,
	right = padding
}

-- Fonts.
config.font = wezterm.font_with_fallback({
	"Operator Mono",
	"FiraMono Nerd Font Mono",
	"KingHwa_OldSong"
})
config.font_size = 18

-- Keymaps {{{

-- Disable default key bindings and define custom ones.
config.disable_default_key_bindings = true
config.keys = {
	{ key = "C", mods = "SHIFT|CTRL", action = act.CopyTo("Clipboard") },
	{ key = "V", mods = "SHIFT|CTRL", action = act.PasteFrom("Clipboard") }
}

--- }}}

return config
