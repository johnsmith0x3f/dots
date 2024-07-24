
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

-- vim.api.nvim_create_autocmd({ "FileType" }, {
-- 	pattern = { "cpp" },
-- 	callback = function()
-- 		vim.keymap.set("n", "<F11>", "<Cmd>w<CR> | <Cmd>!g++ -std=c++11 -Wall -o %:r % && ./%:r<CR>")
-- 	end
-- --	command = "nnoremap <F11> :w<CR> :!g++ -std=c++11 -Wall -o %:r % && ./%:r<CR>"
-- })

vim.cmd([[
	autocmd FileType cpp nnoremap <F11> :w<CR> :!g++ -std=c++11 -Wall -o %:r % && ./%:r<CR>
]])
