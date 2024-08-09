
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
