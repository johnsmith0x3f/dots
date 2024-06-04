return {
    name = "Telescope", "nvim-telescope/telescope.nvim",
    dependencies = { "plenary" },
    keys = {
        { mode = "n", "<Leader>fa", ":Telescope find_files hidden=true<CR>" },
        { mode = "n", "<Leader>ff", ":Telescope find_files<CR>" }
    },
    config = function()
        require("telescope").setup({})
    end
}
