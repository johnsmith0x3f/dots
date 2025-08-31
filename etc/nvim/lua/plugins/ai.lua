return {
	-- Copilot
	--- Pure lua replacement for "github/copilot.vim".
	{
		url = "https://github.com/zbirenbaum/copilot.lua",
		branch = "master",

		-- Enable lazy loading.
		cmd = "Copilot", -- when command is called
		event = "InsertEnter", -- when event is triggered

		-- Run setup commands.
		config = function()
			local copilot = require("copilot")
			local suggestion = require("copilot.suggestion")

			vim.keymap.set({ "i" }, "<M-c>", "<NOP>")
			vim.keymap.set({ "i" }, "<M-c>a", suggestion.accept)
			vim.keymap.set({ "i" }, "<M-c>w", suggestion.accept_word)
			vim.keymap.set({ "i" }, "<M-c>l", suggestion.accept_line)
			vim.keymap.set({ "i" }, "<M-c>d", suggestion.dismiss)

			copilot.setup({
				panel = { enabled = false }, -- disable the panel
				suggestion = { auto_trigger = true }, -- suggest as we type
			})
		end,
	},

	-- Copilot Chat
	--- Chat with GitHub Copilot in NeoVim.
	{
		url = "https://github.com/CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",

		-- Check dependencies.
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- for copilot integrations
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
			{ "MeanderingProgrammer/render-markdown.nvim", opts = { file_types = { "copilot-chat" } } }, -- for better rendering
		},

		-- Set build commands.
		build = function()
			if vim.fn.has("win32") then
				return "powershell Write-Output 'Only on Linux or MacOS'"
			else
				return "make tiktoken"
			end
		end,

		-- Configure keybinds.
		keys = {
			{ mode = "n", "<Leader>cc", "<CMD>CopilotChatToggle<CR>" },
		},

		-- Call setup with options.
		opts = {
			model = "claude-sonnet-4",
			agent = "copilot",
		},
	},
}
