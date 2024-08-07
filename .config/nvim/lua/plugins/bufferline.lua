return {
	name = "BufferLine", "akinsho/bufferline.nvim",

	lazy = false,
	keys = {
		-- Goto buffer.
		{ mode = "n", "<Leader>gb", "<Cmd>BufferLinePick<CR>" }
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
