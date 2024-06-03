return {
    name = "BufferLine", "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    keys = {
        { mode = "n", "<Leader>bp", ":BufferLinePick<CR>" }
    },
    config = function()
        require("bufferline").setup({
            options = {
                indicator = { style = "none" },
                separator_style = "slant"
            }
        })
    end
}
