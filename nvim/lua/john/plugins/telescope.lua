return {
    "nvim-telescope/telescope.nvim", name = "telescope",
    dependencies = { "plenary" },
    config = function()
        require("telescope").setup({
            vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>", {})
        })
    end
}
