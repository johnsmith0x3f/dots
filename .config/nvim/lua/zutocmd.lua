
-- C++
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "cpp" },
	callback = function()
		vim.opt.tabstop = 4
		vim.keymap.set({ "n", "i" }, "<F5>", "<CMD>write <Bar> terminal g++ -std=c++17 -o %:r.out % && %:r.out<CR>")
	end
})
