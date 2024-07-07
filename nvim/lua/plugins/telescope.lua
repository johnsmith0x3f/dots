return {
	name = "Telescope", "nvim-telescope/telescope.nvim", tag = "0.1.8",

	-- Lazy-load options.
	lazy = false,
	keys = {
		-- Find all.
		{ mode = "n", "<Leader>fa", "<Cmd>Telescope find_files hidden=true<CR>" },
		-- Find files.
		{ mode = "n", "<Leader>ff", "<Cmd>Telescope find_files<CR>" }
	}
}
