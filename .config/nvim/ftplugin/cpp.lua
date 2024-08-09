vim.opt.tabstop = 4

-- Compile and run cpp code.
vim.keymap.set({ "n", "i" }, "<F11>", "<Cmd>write<CR> <Bar> <Cmd>terminal g++ -std=c++17 -Wall -o %:r.out % && ./%:r.out<CR>")
