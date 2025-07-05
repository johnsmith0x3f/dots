-- Do not show modes.
vim.opt.showmode = false
-- But do show tablines.
vim.opt.showtabline = 2
-- Enable 24-bit RGB color in the TUI.
vim.opt.termguicolors = true

-- Enable line number.
vim.opt.number = true
-- Use relative number for better hopping around.
vim.opt.relativenumber = true
-- Enable cursorline highlight.
vim.opt.cursorline = true

-- Set the width of tab characters...
vim.opt.tabstop = 2
-- and the width of indentations to always be the same.
vim.opt.shiftwidth = 0
-- Do not use spaces instead of tabs when indenting.
vim.opt.expandtab = false

-- Split to right by default.
vim.opt.splitright = true

-- Set folds.
vim.opt.foldmethod = "marker"

-- Allow using project-specific config files.
vim.opt.exrc = true

-- Filetypes
vim.filetype.add({
	extension = {
		rasi = "rasi"
	}
})

-- -- Define the LSP setup function.
-- local function setup_lsp()
-- 	-- Look for LSP config files in standard RTP.
-- 	local dir = vim.fn.stdpath("config") .. "/lsp"
-- 	-- Return early if the directory does not exist.
-- 	if not vim.fn.isdirectory(dir) then return end
--
-- 	-- Initialize a table to hold LSP server names.
-- 	local servers = {}
-- 	-- Get all LSP server names from the runtime path.
-- 	for _, f in pairs(vim.fn.readdir(dir)) do
-- 		local server_name = vim.fn.fnamemodify(f, ":t:r")
-- 		table.insert(servers, server_name)
-- 	end
-- 	-- Enable the LSP servers.
-- 	require("mason-lspconfig").setup({ ensure_installed = servers })
-- end
-- -- Call the setup function to set up LSP servers.
-- setup_lsp()
