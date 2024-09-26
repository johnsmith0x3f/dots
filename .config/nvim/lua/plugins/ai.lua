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

		opts = {}
	}
}
