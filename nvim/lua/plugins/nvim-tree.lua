return {
    name = "NvimTree", "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- Disable netrw. One file explorer is enough.
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        -- Enable 24-bit color.
        vim.opt.termguicolors = true
        -- Empty setup using defaults.
        require("nvim-tree").setup()
    end
}
