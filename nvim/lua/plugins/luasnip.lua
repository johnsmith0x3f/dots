return {
	name = "LuaSnip", "L3MON4D3/LuaSnip",

    keys = {
        -- TODO
    },

    config = function()
        require("luasnip.loaders.from_snipmate").load({
            path = { "~/.config/nvim/snippets" }
        })
    end
}
