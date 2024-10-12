return {
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"c",
					"cpp",
					"ini",
					"lua",
					"markdown",
					"markdown_inline",
					"vim",
					"vimdoc"
				},
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false
				},
				indent = {
					enable = true
				}
			})
		end
	},

-- Language Specific {{{

	-- Markdown
	{ "OXY2DEV/markview.nvim", lazy = false }

-- }}}
}
