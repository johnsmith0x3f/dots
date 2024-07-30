local map = vim.keymap.set

map("n", "dsm", "<Plug>(vimtex-env-delete-math)", { noremap = true })

map({ "o", "x" }, "ai", "<Plug>(vimtex-am)", { noremap = true })
map({ "o", "x" }, "ii", "<Plug>(vimtex-im)", { noremap = true })

map({ "o", "x" }, "am", "<Plug>(vimtex-a$)", { noremap = true })
map({ "o", "x" }, "im", "<Plug>(vimtex-i$)", { noremap = true })
