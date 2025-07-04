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

	-- -- Copilot Chat
	-- --- Chat with GitHub Copilot in NeoVim.
	-- {
	-- 	url = "https://github.com/CopilotC-Nvim/CopilotChat.nvim",
	-- 	branch = "main",
	--
	-- 	dependencies = {
	-- 		{ "zbirenbaum/copilot.lua" }, -- for copilot integrations
	-- 		{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
	-- 	},
	--
	-- 	build = "make tiktoken", -- only on MacOS or Linux
	--
	-- 	keys = {
	-- 		{ mode = "n", "<Leader>cc", "<CMD>CopilotChatToggle<CR>" },
	-- 	},
	--
	-- 	opts = {
	-- 		debug = true, -- enable debugging
	-- 		model = "claude-sonnet-4",
	--
	-- 		-- Add some custom prompts.
	-- 		prompts = {
	-- 			-- Pirate Speak
	-- 			Arrgh = {
	-- 				prompt = "You are fascinated by pirates, so please respond in pirate speak.",
	-- 				description = "Drink up me hearties!",
	-- 			},
	-- 		},
	-- 	},
	--
	-- },

	-- -- Avante
	-- --- Use your Neovim like using Cursor AI IDE!
	-- {
	-- 	url = "https://github.com/yetone/avante.nvim",
	-- 	version = false,
	--
	-- 	-- Check dependencies.
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"MunifTanjim/nui.nvim",
	-- 		-- Dependencies below are optional.
	-- 		"nvim-telescope/telescope.nvim", -- for file picker
	-- 		"nvim-tree/nvim-web-devicons", -- for icons
	-- 		"zbirenbaum/copilot.lua", -- for copilot
	-- 		{
	-- 			-- For rendering Markdown.
	-- 			url = "https://github.com/MeanderingProgrammer/render-markdown.nvim", ft = { "Avante" },
	-- 			opts = { file_types = { "Avante" } },
	-- 		},
	-- 	},
	--
	-- 	-- Runs on setup.
	-- 	-- build = function()
	-- 	-- 	if vim.fn.has("win32") == 1 then
	-- 	-- 		return "powershell Write-Output 'Use Linux!'" -- fuck Windows
	-- 	-- 	else
	-- 	-- 		return "make"
	-- 	-- 	end
	-- 	-- end,
	-- 	build = "make",
	--
	-- 	-- Set options.
	-- 	---@module "avante"
	-- 	---@type avante.Config
	-- 	opts = { provider = "copilot" },
	-- },

	-- -- CodeCompanion
	-- --- AI-powered coding, seamlessly in NeoVim.
	-- {
	-- 	url = "https://github.com/olimorris/codecompanion.nvim.git",
	-- 	branch = "main",
	--
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 		{
	-- 			url = "https://github.com/MeanderingProgrammer/render-markdown.nvim.git", ft = { "codecompanion" },
	-- 			opts = { -- stole styles from the author "olimorris"
	-- 				filetype = {
	-- 					codecompanion = {
	-- 						html = {
	-- 							tag = {
	-- 								buf = { icon = " ", highlight = "CodeCompanionChatIcon" },
	-- 								file = { icon = " ", highlight = "CodeCompanionChatIcon" },
	-- 								group = { icon = " ", highlight = "CodeCompanionChatIcon" },
	-- 								help = { icon = "󰘥 ", highlight = "CodeCompanionChatIcon" },
	-- 								image = { icon = " ", highlight = "CodeCompanionChatIcon" },
	-- 								symbols = { icon = " ", highlight = "CodeCompanionChatIcon" },
	-- 								tool = { icon = "󰯠 ", highlight = "CodeCompanionChatIcon" },
	-- 								url = { icon = "󰌹 ", highlight = "CodeCompanionChatIcon" },
	-- 							},
	-- 						},
	-- 					},
	-- 				},
	-- 			},
	-- 		},
	-- 	},
	--
	-- 	opts = {},
	-- },
}
