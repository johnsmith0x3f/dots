return {
    "nvim-treesitter/nvim-treesitter", name = "nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { 
                -- The following should always be installed.
                "bash", "c", "cpp", "lua", "markdown", "markdown_inline",
                "query", "vim", "vimdoc"
            },
            highlight = { enabled = true },
            indent = { enabled = true }
        })
    end
}
