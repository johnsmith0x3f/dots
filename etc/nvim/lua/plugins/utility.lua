return {
	-- Hard Time
	--- Break bad habits, master Vim motions.
	{
		url = "https://github.com/m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = { disable_mouse = false }, -- I betrayed Vim philosophy
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
				-- Use Tab to trigger visual selection.
				store_selection_keys = "<Tab>",
				-- Update text in the repeated node as user types.
				update_events = { "TextChanged", "TextChangedI" }
			})

			-- Use TeX snippets in Markdown files.
			ls.filetype_extend("markdown", { "tex" })

			-- Load LuaSnip snippets.
			require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/lua/snippets" })
			-- Load SnipMate snippets.
			require("luasnip.loaders.from_snipmate").load({ paths = vim.fn.stdpath("config") .. "/lua/snippets" })

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

	-- Oil
	--- Split windows and the project drawer go together like oil and vinegar.
	{
		url = "https://github.com/stevearc/oil.nvim", lazy = false, -- replace netrw

		-- Check dependencies.
		dependencies = { "nvim-tree/nvim-web-devicons" },

		-- Configure keybinds.
		keys = { { mode = "n", "-", "<CMD>Oil<CR>" } },

		-- Call setup with options.
		opts = {},
	},

	-- Telescope
	--- Gaze deeply into unknown regions using the power of the moon.
	{
		url = "https://github.com/nvim-telescope/telescope.nvim",
		branch = "master",

		-- Check dependencies.
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},

		-- Configure Keybinds.
		keys = {
			-- Find all (including hidden) files.
			{ mode = "n", "<Leader>fa", function() require("telescope.builtin").find_files({ hidden = true }) end },
			-- Find buffers.
			{ mode = "n", "<Leader>fb", function() require("telescope.builtin").buffers({}) end },
			-- Find files.
			{ mode = "n", "<Leader>ff", function() require("telescope.builtin").find_files({}) end },
			-- Find (grep) contents, requires ripgrep.
			{ mode = "n", "<Leader>fg", function() require("telescope.builtin").live_grep({}) end },

			-- Find references using LSP.
			{ mode = "n", "<Leader>lr", function() require("telescope.builtin").lsp_references({}) end },
			-- Find definitions using LSP.
			{ mode = "n", "<Leader>ld", function() require("telescope.builtin").lsp_definitions({}) end },
		},

		-- Call setup with options.
		opts = {},
	},

	-- -- Multicursor
	-- {
	-- 	"jake-stewart/multicursor.nvim",
	-- },
}
