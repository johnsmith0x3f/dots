
-- Lists {{{

local sitters = {
	"bash",
	"c",
	"cpp",
	"hyprlang",
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
		"tinymist",
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
		{
			name = "tinymist",
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

		opts = {
			ensure_installed = sitters,
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
-- }}}

-- LSP {{{

	-- Mason
	{ "williamboman/mason.nvim", opts = {} },
	{ "williamboman/mason-lspconfig.nvim", opts = { ensure_installed = servers.install } },
	{
		"neovim/nvim-lspconfig",

		keys = {
			{ mode = "n", "gd", vim.lsp.buf.definition },
			{ mode = "n", "<Leader>d", vim.diagnostic.open_float },
		},

		config = function()
			for _, lsp in pairs(servers.setup) do
				--require("lspconfig")[lsp.name].setup(lsp.opts)
				vim.lsp.enable(lsp.name)
				vim.lsp.config(lsp.name, lsp.opts)
			end
		end,
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

		ft = "tex",
	},

	-- Markdown
	{ "OXY2DEV/markview.nvim", ft = "markdown" },
	{
		"iamcco/markdown-preview.nvim",

		build = function()
			-- First load the plugin.
			vim.cmd("Lazy load markdown-preview.nvim")
			-- Then call the plugin's install function.
			vim.fn["mkdp#util#install"]()
		end,

		ft = "markdown",
		keys = {
			{ mode = "n", "<leader>pm", "<CMD>MarkdownPreviewToggle<CR>" },
		},
	},

	-- Rust
	{ "mrcjkb/rustaceanvim", version = "^6", lazy = false },

	-- Typst
	{
		"chomosuke/typst-preview.nvim", version = "v1.*",

		ft = "typst",
		keys = {
			{ mode = "n", "<leader>pt", "<CMD>TypstPreviewToggle<CR>" },
		},

		opts = {},
	},

-- }}}
}
