-- Disable auto-commenting newlines.
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = "*",
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
})

-- C++
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "cpp" },
	callback = function()
		vim.opt_local.tabstop = 4
		vim.keymap.set({ "n", "i" }, "<F5>", "<CMD>write <Bar> terminal g++ -std=c++17 -o %:r.out % && ./%:r.out<CR>")
	end,
})

-- Dart
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "dart" },
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.expandtab = true
	end,
})

-- Help & Man-Pages
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "help", "man" },
	callback = function()
		vim.opt_local.number = true
		vim.opt_local.relativenumber = true
	end,
})

-- Python
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "python" },
	callback = function()
		vim.opt_local.tabstop = 4
		vim.keymap.set({ "n", "i" }, "<F5>", "<CMD>write <Bar> terminal python %<CR>")
	end,
})
