local catppuccin = {
    "catppuccin/nvim", name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({})
        -- vim.cmd("colorscheme catppuccin")
    end
}

local tokyonight = {
    "folke/tokyonight.nvim", name = "tokyonight",
    priority = 1000,
    config = function()
        require("tokyonight").setup({})
        vim.cmd("colorscheme tokyonight")
    end
}

return { catppuccin, tokyonight }
