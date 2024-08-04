
local templates = vim.api.nvim_create_augroup("templates", {
	clear = false
})
vim.api.nvim_create_autocmd({ "BufNewFile" }, {
	group = templates,
	pattern = { "*.cpp" },
	command = "0r $HOME/.config/nvim/templates/skeleton.cpp"
})
vim.api.nvim_create_autocmd({ "BufNewFile" }, {
	group = templates,
	pattern = { "*.sh" },
	command = "0r $HOME/.config/nvim/templates/skeleton.sh"
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "cpp" },
	callback = function()
		vim.keymap.set({ "n", "i" }, "<F11>", "<Cmd>write<CR> | <Cmd>terminal g++ -std=c++17 -Wall -o %:r.out % && ./%:r.out<CR>")
	end
})
