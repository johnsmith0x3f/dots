local catppuccin = {
	"catppuccin/nvim", name = "Catppuccin",
	priority = 1000,
	
	opts = {}
}

local tokyonight = {
	"folke/tokyonight.nvim", name = "TokyoNight",
	priority = 1000,

	opts = {
		style = "storm"
	}
}

return { catppuccin, tokyonight }
