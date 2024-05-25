-- Use comma as leader key.
-- Because '\' is too far away.
vim.g.mapleader = ","
vim.g.localmapleader = ","

local set = vim.keymap.set
local opt = { noremap = true, silent = true }

-- Prevent bad habits like using the arrow keys for movement.
-- In normal mode...
set("n", "<Left>",  ':echo "Use h"<CR>', opt)
set("n", "<Down>",  ':echo "Use j"<CR>', opt)
set("n", "<Up>",    ':echo "Use k"<CR>', opt)
set("n", "<Right>", ':echo "Use l"<CR>', opt)
-- and in insert mode.
set("i", "<Left>",  '<Esc>:echo "Use h"<CR>', opt)
set("i", "<Down>",  '<Esc>:echo "Use j"<CR>', opt)
set("i", "<Up>",    '<Esc>:echo "Use k"<CR>', opt)
set("i", "<Right>", '<Esc>:echo "Use l"<CR>', opt)

-- Better window navigations.
-- Whenever you can use hjkl, use them.
set("n", "<C-h>", "<C-w>h", opt)
set("n", "<C-j>", "<C-w>j", opt)
set("n", "<C-k>", "<C-w>k", opt)
set("n", "<C-l>", "<C-w>l", opt)

-- Better indenting.
set("v", "<", "<gv", opt)
set("v", ">", ">gv", opt)
