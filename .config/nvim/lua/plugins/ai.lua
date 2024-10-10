return {
	-- Copilot
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
	},
	-- Copilot Chat
	{
		"CopilotC-Nvim/CopilotChat.nvim", branch = "canary",

		build = "make tiktoken", -- only on MacOS or Linux

		keys = {
			{ mode = "n", "<Leader>cc", "<CMD>CopilotChatToggle<CR>" }
		},
		
		opts = {
			debug = true -- enable debugging
		}
	}
}
