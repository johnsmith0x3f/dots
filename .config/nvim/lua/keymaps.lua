-- Use space as leader key, '\' is too far away.
vim.g.mapleader = " "
vim.g.maplocalleader = ";"

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

-- Prevent bad habits like using the arrow keys for movement.
map({ "n", "i" }, "<Left>",  '<CMD>echo "Use h"<CR>')
map({ "n", "i" }, "<Down>",  '<CMD>echo "Use j"<CR>')
map({ "n", "i" }, "<Up>",    '<CMD>echo "Use k"<CR>')
map({ "n", "i" }, "<Right>", '<CMD>echo "Use l"<CR>')

-- Better line navigations.
map("n", "j", "gj", opt);
map("n", "k", "gk", opt);

-- Better window navigations. Whenever you can use hjkl, use them.
--map("n", "<C-h>", "<C-w>h", opt)
--map("n", "<C-j>", "<C-w>j", opt)
--map("n", "<C-k>", "<C-w>k", opt)
--map("n", "<C-l>", "<C-w>l", opt)

map("n", "<leader>s", "<CMD>source<CR>")
