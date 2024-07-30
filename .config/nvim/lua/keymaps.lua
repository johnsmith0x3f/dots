-- Use space as leader key, '\' is too far away.
vim.g.mapleader = " "
vim.g.maplocalleader = ";"

local map = vim.keymap.set

-- Prevent bad habits like using the arrow keys for movement.
map({ "n", "i" }, "<Left>",  '<Cmd>echo "Use h"<CR>')
map({ "n", "i" }, "<Down>",  '<Cmd>echo "Use j"<CR>')
map({ "n", "i" }, "<Up>",    '<Cmd>echo "Use k"<CR>')
map({ "n", "i" }, "<Right>", '<Cmd>echo "Use l"<CR>')

local opt = { noremap = true, silent = true }

-- Better window navigations. Whenever you can use hjkl, use them.
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

map("n", "<leader>s", "<Cmd>source<CR>")
