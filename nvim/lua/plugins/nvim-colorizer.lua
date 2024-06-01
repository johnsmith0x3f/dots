return {
    name = "NvimColorizer", "norcalli/nvim-colorizer.lua",

    config = function()
        require("colorizer").setup({}, {
            RGB         = true,
            RRGGBB      = true,
            RRGGBBAA    = true,
            mode        = "background"
        })
    end
}
