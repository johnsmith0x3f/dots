return {
	name = "Telescope", "nvim-telescope/telescope.nvim",

	-- Lazy-load options.
	lazy = false,
	keys = {
		-- Find all.
		{ mode = "n", "<Leader>fa", "<Cmd>Telescope find_files hidden=true<CR>" },
		-- Find files.
		{ mode = "n", "<Leader>ff", "<Cmd>Telescope find_files<CR>" }
	}
}
