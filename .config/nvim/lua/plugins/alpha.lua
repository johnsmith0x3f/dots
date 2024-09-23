local M = {
	[[  ███       ███  ]],
	[[  ████      ████ ]],
	[[  ████     █████ ]],
	[[ █ ████    █████ ]],
	[[ ██ ████   █████ ]],
	[[ ███ ████  █████ ]],
	[[ ████ ████ ████ ]],
	[[ █████  ████ ███ ]],
	[[ █████   ████ ██ ]],
	[[ █████    ████ █ ]],
	[[ █████     ████  ]],
	[[ ████      ████  ]],
	[[  ███       ███  ]],
}

local function button(keys, desc, comm)
	-- Return a "button" type to alpha.
	return {
		type = "button",

		-- Text to display.
		val = desc,

		-- Actions to perform when pressed.
		on_press = vim.cmd(comm),

		opts = {
			-- Define a temporary keymap.
			-- keymap = { {}, { noremap = true, silent = true } },

			position = "center",
			hl = "AlphaButtons",

			-- Shortcut to display.
			shortcut = keys,
			align_shortcut = "left",
			hl_shortcut = "AlphaShortcuts",

			-- The column to place the cursor.
			cursor = 0,
			-- Padding around the button.
			width = 50,
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

    config = function()
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
            dashboard.button("e", "  New file" ,   "<CMD>ene | startinsert<CR>"),
            dashboard.button("f", "  Find file",   "<CMD>Telescope find_files<CR>"),
            dashboard.button("q", "  Quit NeoVim", "<CMD>qa<CR>"),
        }
        require("alpha").setup(dashboard.opts)
    end
}
