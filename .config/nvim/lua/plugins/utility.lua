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
		"L3MON4D3/LuaSnip", lazy = false,
		
		config = function()
			-- Copied. TODO.
			vim.cmd([[
				" Use Tab to expand and jump through snippets
				imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
				smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

				" Use Shift-Tab to jump backwards through snippets
				imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
				smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
			]])

			-- Load LuaSnip snippets.
			require("luasnip.loaders.from_lua").load({
				paths = { "~/.config/nvim/lua/snippets/luasnip" }
			})
			require("luasnip").config.set_config({
				-- Enable autotriggered snippets.
				enable_autosnippets = true,
			
				-- Use Tab to trigger visual selection.
				store_selection_keys = "<Tab>",
				
				update_events = { "TextChanged", "TextChangedI" }
			})
		end
	}
}
