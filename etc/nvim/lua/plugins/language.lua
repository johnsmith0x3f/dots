
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
	--- Easily install and manage LSP servers, DAP servers, linters, and formatters.
	{
		url = "https://github.com/mason-org/mason.nvim.git",
		opts = {},
	},
	-- Mason LSP Config
	--- Extension to mason.nvim that makes it easier to use.
	{
		url = "https://github.com/mason-org/mason-lspconfig.nvim.git",
		config = function()
			local dir = vim.fn.stdpath("config") .. "/lsp"
			if not vim.fn.isdirectory(dir) then
				return
			end

			local servers = {}
			for _, f in pairs(vim.fn.readdir(dir)) do
				local server_name = vim.fn.fnamemodify(f, ":t:r")
				table.insert(servers, server_name)
			end

			require("mason-lspconfig").setup({ ensure_installed = servers })
		end,
	},

-- }}}

-- Language Specific {{{

	-- Dart
	{
		"nvim-flutter/flutter-tools.nvim",

		dependencies = { "nvim-lua/plenary.nvim" },

		lazy = false,

		opts = {},
	},

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
	--{ "OXY2DEV/markview.nvim", ft = "markdown" },
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

	-- RON
	{ "ron-rs/ron.vim", ft = "ron", },

	-- Rust
	{ "mrcjkb/rustaceanvim", version = "^6", lazy = false },

	-- Typst
	{
		"chomosuke/typst-preview.nvim", version = "v1.*",

		ft = "typst",
		keys = {
			{ mode = "n", "<leader>pt", "<CMD>TypstPreviewToggle<CR>" },
		},

		opts = {
			invert_colors = "auto",
		},
	},

-- }}}
}
