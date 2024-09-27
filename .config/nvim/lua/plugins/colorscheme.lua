return {
	-- Gruvbox
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	-- One Dark Pro
	{ "olimorris/onedarkpro.nvim", priority = 1000 },
	-- Tokyo Night
	{
		"folke/tokyonight.nvim", priority = 1001,

		config = function() vim.cmd("colorscheme tokyonight-storm") end
	}
}
