return {
    "nvim-telescope/telescope.nvim", name = "telescope",
    dependencies = { "plenary" },
    keys = {
        { mode = "n", "<Leader>ff", ":Telescope find_files hidden=true<CR>" }
    },
    config = function()
        require("telescope").setup({})
    end
}
