return {
    "nvim-treesitter/nvim-treesitter", name = "NvimTreesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                -- The following should always be installed.
                "bash", "c", "cpp", "ini", "lua",
                "markdown", "markdown_inline", "python", "query", "toml", "vim", "vimdoc"
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            indent = {
                enable = true
            },
        })
    end
}
