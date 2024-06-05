-- Use comma as leader key, '\' is too far away.
vim.g.mapleader = ","
vim.g.localmapleader = ","

local set = vim.keymap.set

-- Prevent bad habits like using the arrow keys for movement.
set({"n", "i"}, "<Left>",  '<Cmd>echo "Use h"<CR>')
set({"n", "i"}, "<Down>",  '<Cmd>echo "Use j"<CR>')
set({"n", "i"}, "<Up>",    '<Cmd>echo "Use k"<CR>')
set({"n", "i"}, "<Right>", '<Cmd>echo "Use l"<CR>')

local opt = { noremap = true, silent = true }

-- Better window navigations.
-- Whenever you can use hjkl, use them.
set("n", "<C-h>", "<C-w>h", opt)
set("n", "<C-j>", "<C-w>j", opt)
set("n", "<C-k>", "<C-w>k", opt)
set("n", "<C-l>", "<C-w>l", opt)

-- Better indenting.
set("v", "<", "<gv", opt)
set("v", ">", ">gv", opt)
