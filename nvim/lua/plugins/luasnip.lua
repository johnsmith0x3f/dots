return {
    name = "LuaSnip", "L3MON4D3/LuaSnip",

    lazy = false,
    keys = {
        { mode = { "i", "s" }, "<C-e>", function()
            if require("luasnip").expand_or_jumpable() then
                require("luasnip").expand_or_jump()
            end
        end, { silent = true } }
    },

    config = function()
        require("luasnip.loaders.from_snipmate").load({
            path = { "~/.config/nvim/snippets" }
        })
    end
}
