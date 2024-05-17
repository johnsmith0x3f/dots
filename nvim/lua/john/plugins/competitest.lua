return {
    "xeluxee/competitest.nvim", name = "competitest",
    dependencies = { "nui" },
    config = function()
        vim.keymap.set("n", "<F1>", ":CompetiTest add_testcase<CR>", {})
        vim.keymap.set("n", "<F2>", ":CompetiTest edit_testcase ", {})
        vim.keymap.set("n", "<F3>", ":CompetiTest delete_testcase ", {})
        vim.keymap.set("n", "<F4>", ":CompetiTest run<CR>", {})
        require("competitest").setup({})
    end
}
