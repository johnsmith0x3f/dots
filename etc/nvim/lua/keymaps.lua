-- Use space as leader key, '\' is too far away.
vim.g.mapleader = " "
vim.g.maplocalleader = ";"

-- Set some abbreviations.
local map = vim.keymap.set
local opt = { noremap = true, silent = true }

-- Prevent bad habits like using the arrow keys for movement.
map({ "n", "x" }, "<Left>",  "<CMD>echo 'Use h'<CR>")
map({ "n", "x" }, "<Down>",  "<CMD>echo 'Use j'<CR>")
map({ "n", "x" }, "<Up>",    "<CMD>echo 'Use k'<CR>")
map({ "n", "x" }, "<Right>", "<CMD>echo 'Use l'<CR>")

-- Better line navigations.
map({ "n", "x" }, "j", "gj", opt);
map({ "n", "x" }, "k", "gk", opt);

-- Better window navigations. Whenever you can use hjkl, use them.
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

map("n", "<leader>s", "<CMD>source<CR>")
