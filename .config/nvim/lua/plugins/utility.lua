return {
	-- Split windows and the project drawer go together like oil and vinegar.
	{
		"stevearc/oil.nvim",

		keys = {
			{ mode = "n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory." }}
		},

		---@module "oil"
		---@type oil.SetupOpts
		opts = {}
	},
	-- Gaze deeply into unknown regions using the power of the moon.
	{
		"nvim-telescope/telescope.nvim",

		keys = {
			-- Find all.
			{ mode = "n", "<Leader>fa", "<CMD>Telescope find_files hidden=true<CR>" },
			-- Find files.
			{ mode = "n", "<Leader>ff", "<CMD>Telescope find_files<CR>" }
		}
	}
}
