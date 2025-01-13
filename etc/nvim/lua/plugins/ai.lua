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
					accept = "<C-S-CR>",
					accept_word = false,
					accept_line = false
				}
			}
		}
	},
	-- Copilot Chat
	{
		"CopilotC-Nvim/CopilotChat.nvim",

		build = "make tiktoken", -- only on MacOS or Linux

		keys = {
			{ mode = "n", "<Leader>cc", "<CMD>CopilotChatToggle<CR>" }
		},
		
		opts = {
			debug = true -- enable debugging
		}
	}
}
