-- print("Hello Neovim!")

-- Load options.
require("options")

-- Load keymaps.
require("keymaps")

-- Load plugins.
require("lazyvim")

vim.api.nvim_create_autocmd({ "BufNewFile" }, {
	pattern = { "*.cpp" },
	command = "0r $HOME/.config/nvim/templates/skeleton.cpp",
})
