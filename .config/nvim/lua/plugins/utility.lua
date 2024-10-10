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
		"nvim-telescope/telescope.nvim", lazy = false,

		keys = {
			-- Find all.
			{ mode = "n", "<Leader>fa", "<CMD>Telescope find_files hidden=true<CR>" },
			-- Find files.
			{ mode = "n", "<Leader>ff", "<CMD>Telescope find_files<CR>" }
		}
	},
	-- LuaSnip
	{
		"L3MON4D3/LuaSnip",

		config = function()
			local ls = require("luasnip")

			-- Setup LuaSnip.
			ls.setup({
				-- Enable autotriggered snippets.
				enable_autosnippets = true,
				-- Update text in the repeated node as user types.
				update_events = { "TextChanged", "TextChangedI" }
			})
			-- Load LuaSnip snippets.
			require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })

			-- Map keys.
			vim.keymap.set({ "i" }, "<C-E>", function() ls.expand() end, { silent = true })
		end
	}
}
