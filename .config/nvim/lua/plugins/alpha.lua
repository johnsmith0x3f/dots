local function button(keys, desc, comm)
	-- Return a "button" type to alpha.
	return {
		type = "button",

		-- Text to display.
		val = desc,

		-- Actions to perform when pressed.
		on_press = function() vim.cmd(comm) end,

		opts = {
			-- Define a temporary keymap.
			keymap = { "n", keys, comm, { noremap = true, silent = true } },
			-- Position to put at.
			position = "center",
			hl = "AlphaButtons",
			-- Shortcut to display.
			shortcut = keys,
			align_shortcut = "right",
			hl_shortcut = "AlphaShortcuts",
			-- The column to place the cursor.
			cursor = 5,
			-- Padding around the button.
			width = 36,
		}
	}
end

local options = {
	header = {
		type = "text",
		val = {
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
		},
		opts = {
			position = "center",
			hl = "AlphaHeader"
		}
	},
	buttons = {
		type = "group",
		val = {
			button("e", "  New File", "<CMD>ene | startinsert<CR>"),
			button("f", "  Find File", "<CMD>Telescope find_files<CR>"),
			button("q", "  Quit NeoVim", "<CMD>qa<CR>"),
		},
		opts = {
			spacing = 1
		}
	}
}

return {
	"goolord/alpha-nvim",
	opts = {
		layout = {
			options.header,
			options.buttons
		},
		opts = {}
	}
}
