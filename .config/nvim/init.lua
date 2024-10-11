-- The place where everything started.

-- Load options.
require("options")

-- Load keymaps.
require("keymaps")

-- Load plugins.
require("lazyvim")



vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "cpp" },
	callback = function()
		vim.keymap.set({ "n", "i" }, "<F5>", "<CMD>write <Bar> terminal g++ -Wall -std=c++17 -o %:r.out % && ./%:r.out<CR>")
	end
})
