-- print("Hello Neovim!")

-- Load options.
require("options")

-- Load keymaps.
require("keymaps")

-- Load plugins.
require("lazyvim")



local templates = nvim_create_augroup("templates", {
	clear = false
})

vim.api.nvim_create_autocmd({ "BufNewFile" }, {
	group = templates,
	pattern = { "*.cpp" },
	command = "0r $HOME/.config/nvim/templates/skeleton.cpp"
})
