return {
    "nvim-treesitter/nvim-treesitter", name = "nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                -- The following should always be installed.
                "bash", "bibtex", "c", "cpp", "latex", "lua",
                "markdown", "markdown_inline", "python", "query", "toml", "vim", "vimdoc"
            },
            highlight = { enabled = true },
            indent = { enabled = true }
        })
    end
}
