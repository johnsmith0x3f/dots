return {
    "akinsho/bufferline.nvim", name = "bufferline",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.opt.termguicolors = true
        vim.keymap.set("n", "gb", ":BufferLinePick<CR>", {})
        require("bufferline").setup({
            options = {
                indicator = { style = "none" },
                separator_style = "slant"
            }
        })
    end
}
