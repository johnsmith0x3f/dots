return {
	name = "BufferLine", "akinsho/bufferline.nvim",

	lazy = false,
	keys = {
		-- Goto buffer.
		{ mode = "n", "[b", "<Cmd>BufferLineCyclePrev<CR>" },
		{ mode = "n", "]b", "<Cmd>BufferLineCycleNext<CR>" },
		{ mode = "n", "<Leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>" },
		{ mode = "n", "<Leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>" },
		{ mode = "n", "<Leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>" },
		{ mode = "n", "<Leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>" },
		{ mode = "n", "<Leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>" }
	},

	opts = {
		highlights = {
			fill = { bg = "bg" }
		},
		options = {
			indicator = { style = "icon" },
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					separator = false
				}
			},
			separator_style = "thin"
		}
	}
}
