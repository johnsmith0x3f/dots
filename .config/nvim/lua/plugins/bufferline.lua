return {
    name = "BufferLine", "akinsho/bufferline.nvim",

    lazy = false,
    keys = {
        -- Goto buffer.
        { mode = "n", "<Leader>gb", "<Cmd>BufferLinePick<CR>" }
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
