local colorscheme = "tokyonight-storm"

return {
	-- Colorschemes {{{

	-- Catppuccin
	{ "catppuccin/nvim", name = "catppuccin.nvim", priority = 1000 },
	-- Gruvbox
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	-- One Dark Pro
	{ "olimorris/onedarkpro.nvim", priority = 1000 },
	-- Oxocarbon
	{ "nyoom-engineering/oxocarbon.nvim", priority = 1000 },
	-- Tokyo Night
	{ "folke/tokyonight.nvim", priority = 1000 },

	-- Set colorscheme.
	{ dir = vim.fn.stdpath("data") .. "/plugins/dummy.nvim", priority = 999, config = function() vim.cmd("colorscheme " .. colorscheme) end },

	-- }}}

	-- Alpha
	{
		"goolord/alpha-nvim", lazy = false,

		config = function()
			-- Hide the cursor.
			vim.cmd("highlight Cursor blend=100 | set guicursor+=a:Cursor/lCursor")
			-- Restore the cursor on event AlphaClosed.
			vim.api.nvim_create_autocmd("User", {
				pattern = "AlphaClosed",
				callback = function()
					vim.api.nvim_set_hl(0, "Cursor", { blend = 0 })
					vim.opt.guicursor:remove("a:Cursor/lCursor")
				end,
			})

			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				"                                                                       ",
				"                                                                       ",
				"                                                                     ",
				"       ████ ██████           █████      ██                     ",
				"      ███████████             █████                             ",
				"      █████████ ███████████████████ ███   ███████████   ",
				"     █████████  ███    █████████████ █████ ██████████████   ",
				"    █████████ ██████████ █████████ █████ █████ ████ █████   ",
				"  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
				" ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
				"                                                                       ",
				"                                                                       ",
				"                                                                       ",
			}
			dashboard.section.buttons.val = {
				dashboard.button("e", "󱇧  Edit File", "<CMD>enew <BAR> startinsert<CR>"),
				dashboard.button("f", "󰱼  Find File", "<CMD>Telescope find_files<CR>"),
				dashboard.button("g", "󱝴  Find Pattern", "<CMD>Telescope live_grep<CR>"),
				dashboard.button("q", "󰅙  Quit NeoVim", "<CMD>qa<CR>"),
			}

			alpha.setup(dashboard.opts)
		end,
	},

	-- BufferLine
	{
		"akinsho/bufferline.nvim", lazy = false,

		keys = {
			-- Goto buffer.
			{ mode = "n", "[b", "<CMD>BufferLineCyclePrev<CR>" },
			{ mode = "n", "]b", "<CMD>BufferLineCycleNext<CR>" },
			{ mode = "n", "{B", "<CMD>BufferLineMovePrev<CR>" },
			{ mode = "n", "}B", "<CMD>BufferLineMoveNext<CR>" },
			{ mode = "n", "<Leader>1", "<CMD>BufferLineGoToBuffer 1<CR>" },
			{ mode = "n", "<Leader>2", "<CMD>BufferLineGoToBuffer 2<CR>" },
			{ mode = "n", "<Leader>3", "<CMD>BufferLineGoToBuffer 3<CR>" },
			{ mode = "n", "<Leader>4", "<CMD>BufferLineGoToBuffer 4<CR>" },
			{ mode = "n", "<Leader>5", "<CMD>BufferLineGoToBuffer 5<CR>" },
			-- Close buffer.
			{ mode = "n", "<Leader>x", "<CMD>bdelete<CR>"},
		},

		opts = {
			highlights = {
				fill = { bg = "bg" }
			},
			options = {
				indicator = { style = "icon" },
				separator_style = "thin"
			}
		}
	},

	-- LuaLine
	{
		"nvim-lualine/lualine.nvim",

		opts = {
			options = {
				component_separators = { left = "", right = "" },
				secton_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {}
				},
				ignore_focus = { "NvimTree" }
			},
			sections = {
				lualine_a = {
					{ "mode", separator = { left = "", right = "" } }
				},
				lualine_b = {
					{ "branch", "diff", "diagnostics", separator = { right = "" } }
				},
				lualine_c = { "filename" },
				lualine_x = { "filetype" },
				lualine_y = {
					{ "progress", separator = { left = "" } }
				},
				lualine_z = {
					{ "location", separator = { left = "", right = "" } }
				}
			},
			tabline = {},
			winbar = {}
		}
	},

	-- Noice
	--{
	--	"folke/noice.nvim",

	--	event = "VeryLazy",

	--	opts = {}
	--},

	-- Colorizer
	{
		"norcalli/nvim-colorizer.lua",

		config = function()
			require("colorizer").setup({ "*" }, {
				RGB = true,
				RRGGBB = true,
				RRGGBBAA = true,
				names = true,
				mode = "background"
			})
		end
	}
}
