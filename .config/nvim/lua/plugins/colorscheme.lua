local catppuccin = {
	name = "Catppuccin", "catppuccin/nvim",
	priority = 1000,
	
	opts = {}
}

local nord = {
	name = "Nord", "shaunsingh/nord.nvim",
	priority = 1000
}

local tokyonight = {
	name = "Tokyo Night", "folke/tokyonight.nvim",
	priority = 1000,

	opts = {},
	config = function()
		vim.cmd("colorscheme tokyonight-storm")
	end
}

return { catppuccin, nord, tokyonight }
