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
	"yuck",
}

local servers = {
	install = {
		"clangd",
		"lua_ls",
		"pylsp",
		"rust_analyzer",
	},
	setup = {
		{
			name = "clangd",
			opts = {},
		},
		{
			name = "lua_ls",
			opts = {
				settings = {
					Lua = {
						diagnostics = {
							-- Make the language server recognize the `vim` global.
							globals = { "vim" },
						},
						runtime = {
							-- Tell the language server the version of Lua being used.
							version = "LuaJIT",
						},
						telemetry = {
							-- Do not send telemetry data containing a randomized but unique identifier.
							enable = false,
						},
						workspace = {
							-- Make the language server recognize NeoVim runtime files.
							library = vim.api.nvim_get_runtime_file("", true),
						},
					},
				},
			},
		},
		{
			name = "pylsp",
			opts = {},
		},
	},
}

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
			require("mason-lspconfig").setup({ ensure_installed = servers.install })
		end
	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			for _, lsp in pairs(servers.setup) do
				require("lspconfig")[lsp.name].setup(lsp.opts)
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
