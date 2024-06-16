return {
    name = "NvimTree", "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    -- Lazy-load options.
    lazy = false,
    keys = {
        { mode = "n", "<Leader>lf", "<Cmd>NvimTreeToggle<CR>" }
    },

    config = function()
        -- Disable netrw. One file explorer is enough.
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        -- Custom setup options.
        require("nvim-tree").setup({
            git = { enable = false }
        })
    end
}
