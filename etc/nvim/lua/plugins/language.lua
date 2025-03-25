-- Lists {{{

local sitters = {
	"bash",
	"c",
	"cpp",
	"ini",
	"lua",
	"markdown",
	"markdown_inline",
	"rasi",
	"regex",
	"ron",
	"rust",
	"tmux",
	"typst",
	"vim",
	"vimdoc",
	"yuck"
}

local servers = {
	"clangd",
	"lua_ls",
	"pylsp"
}
local servers_install_only = {
	"rust_analyzer"
}
table.move(servers, 1, #servers, #servers_install_only + 1, servers_install_only)

-- }}}

return {
-- Treesitter {{{
	{
		"nvim-treesitter/nvim-treesitter",

		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { sitters },
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
-- }}}

-- LSP {{{

	-- Mason
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup({})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",

		config = function()
			require("mason-lspconfig").setup({ ensure_installed = servers_install_only })
		end
	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			for _, lsp in pairs(servers) do
				require("lspconfig")[lsp].setup({})
			end
		end
	},

-- }}}

-- Language Specific {{{

	-- LaTeX
	{
		"lervag/vimtex",

		init = function()
			-- View PDF with zathura.
			vim.g.vimtex_view_method = "zathura"
			-- Disable pop-up warnings.
			vim.g.vimtex_quickfix_open_on_warning = 0
		end,

		ft = "tex"
	},

	-- Markdown
	{
		"OXY2DEV/markview.nvim",

		ft = "markdown"
	},

	-- Rust
	{
		"mrcjkb/rustaceanvim", version = "^5", lazy = false,

		ft = "rust"
	}

-- }}}
}
