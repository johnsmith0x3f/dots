return {
    name = "NvimTree", "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    keys = {
        { mode = "n", "-", "<Cmd>NvimTreeToggle<CR>" }
    },

    config = function()
        -- Disable netrw. One file explorer is enough.
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        -- Empty setup using defaults.
        require("nvim-tree").setup({
            git = { enable = false }
        })
    end
}
