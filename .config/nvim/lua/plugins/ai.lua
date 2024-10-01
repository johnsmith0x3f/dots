return {
	-- ChatGPT
	{
		"jackmort/chatgpt.nvim",

		event = "VeryLazy"
	},
	-- Github Copilot
	{
		"zbirenbaum/copilot.lua",

		cmd = "Copilot",
		event = "InsertEnter",

		opts = {
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = "<M-CR>",
					accept_word = false,
					accept_line = false,
					prev = "<M-[>",
					next = "<M-]>",
					dismiss = "<C-]>"
				}
			}
		}
		
	}
}
