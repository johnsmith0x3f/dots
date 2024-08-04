return {
	name = "LuaLine", "nvim-lualine/lualine.nvim",

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
}
