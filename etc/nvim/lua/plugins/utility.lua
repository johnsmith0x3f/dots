return {
-- File Management {{{

	-- Oil
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

	-- Telescope
	-- Gaze deeply into unknown regions using the power of the moon.
	{
		"nvim-telescope/telescope.nvim", lazy = false,

		keys = {
			-- Find all files (including hidden).
			{ mode = "n", "<Leader>fa", function() require("telescope.builtin").find_files({ hidden = true }) end },
			-- Find files.
			{ mode = "n", "<Leader>ff", function() require("telescope.builtin").find_files({}) end },
			-- Find buffers.
			{ mode = "n", "<Leader>lg", function() require("telescope.builtin").live_grep({}) end }, -- requires ripgrep
		}
	},

-- }}}

	-- LuaSnip
	{
		"L3MON4D3/LuaSnip",

		config = function()
			local ls = require("luasnip")

			-- Setup LuaSnip.
			ls.setup({
				-- Enable autotriggered snippets.
				enable_autosnippets = true,
				-- Use Tab to trigger visual selection.
				store_selection_keys = "<Tab>",
				-- Update text in the repeated node as user types.
				update_events = { "TextChanged", "TextChangedI" }
			})

			-- Use TeX snippets in Markdown files.
			ls.filetype_extend("markdown", { "tex" })

			-- Load LuaSnip snippets.
			require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/lua/snippets" })

			-- Map keys.
			vim.keymap.set({ "i", "s" }, "<Tab>", function()
				if ls.expand_or_jumpable() then
					ls.expand_or_jump()
				else
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
				end
			end, { silent = true })
		end
	},
	-- Multicursor
	{
		"jake-stewart/multicursor.nvim"
	},

	-- Which Key
	-- WhichKey helps you remember your Neovim keymaps, by showing available keybindings in a popup as you type.
	{
		"folke/which-key.nvim",

		event = "VeryLazy",
		keys = {
			{ mode = "n", "<Leader>?", function() require("which-key").show({ global = false }) end },
		},

		opts = {
		},
	},
}
