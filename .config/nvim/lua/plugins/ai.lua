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
	},
	-- Copilot Chat
	{
		"CopilotC-Nvim/CopilotChat.nvim", branch = "canary",

		build = "make tiktoken", -- Only on MacOS or Linux

		keys = {
			{ mode = "n", "<Leader>cc", "<CMD>CopilotChatToggle<CR>" }
		},
		
		opts = {
			debug = true -- Enable debugging
			-- See Configuration section for rest
		}
		-- See Commands section for default commands if you want to lazy load on them
	}
}
