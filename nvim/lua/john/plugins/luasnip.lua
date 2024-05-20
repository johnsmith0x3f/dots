return {
	"L3MON4D3/LuaSnip",

    config = function()
        vim.keymap.set("i", "<Tab>", function() require("luasnip").expand() end, {silent = true})
        require("luasnip.loaders.from_snipmate").load({ path = { "~/.config/nvim/snippets" } })
    end
}
