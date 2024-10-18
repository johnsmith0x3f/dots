return {
	-- A Lua fork of vim-devicons.
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	-- All the Lua functions TJ don't want to write twice.
	{ "nvim-lua/plenary.nvim", lazy = true },
	-- UI Component Library for Neovim.
	{ "MunifTanjim/nui.nvim", lazy = true },
	-- A fancy, configurable, notification manager for NeoVim.
	{ "rcarriga/nvim-notify", lazy = true, opts = { top_down = false } },
}
