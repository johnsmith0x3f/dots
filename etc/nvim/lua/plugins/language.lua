return {
-- Treesitter {{{

	{
		url = "https://github.com/nvim-treesitter/nvim-treesitter.git",
		branch = "master",

		-- Set build commands.
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,

		-- Call setup with options.
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"dockerfile",
				"hyprlang",
				"ini",
				"lua",
				"markdown",
				"markdown_inline",
				"qmljs",
				"rasi",
				"regex",
				"ron",
				"rust",
				"sway",
				"tmux",
				"toml",
				"typst",
				"vim",
				"vimdoc",
				"yuck",
				"zathurarc",
			},
		},
	},

-- }}}

-- LSP {{{

	-- Mason
	--- Easily install and manage LSP servers, DAP servers, linters, and formatters.
	-- Mason & Mason LSP Config
	--- Extension to mason.nvim that makes it easier to use.
	{
		url = "https://github.com/mason-org/mason-lspconfig.nvim",
		branch = "main",

		-- Check dependencies.
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
		},

		-- Run setup commands.
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
