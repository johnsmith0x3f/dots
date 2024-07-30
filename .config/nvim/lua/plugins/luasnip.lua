return {
	name = "LuaSnip", "L3MON4D3/LuaSnip",

--  lazy = false,
--  keys = {
--	  { mode = { "i", "s" }, "<C-e>", function()
--		  if require("luasnip").expand_or_jumpable() then
--		      require("luasnip").expand_or_jump()
--		  end
--	  end, { silent = true } }
--  },

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

		-- Load lua snippets.
		require("luasnip.loaders.from_lua").load({
			paths = { "~/.config/nvim/snippets/luasnip" }
		})

--	  -- Load snipmate-style snippets.
--	  require("luasnip.loaders.from_snipmate").load({
--		  paths = { "~/.config/nvim/snippets/snipmate" }
--	  })

		require("luasnip").config.set_config({
			-- Enable autotriggered snippets.
			enable_autosnippets = true,
		
			-- Use Tab to trigger visual selection.
			store_selection_keys = "<Tab>",
			
			update_events = { "TextChanged", "TextChangedI" }
		})
	end
}
