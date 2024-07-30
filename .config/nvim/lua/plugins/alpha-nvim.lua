return {
    name = "Alpha", "goolord/alpha-nvim",

    config = function()
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.header.val = {
            "                                                                       ",
            "                                                                       ",
            "                                                                     ",
            "       ████ ██████           █████      ██                     ",
            "      ███████████             █████                             ",
            "      █████████ ███████████████████ ███   ███████████   ",
            "     █████████  ███    █████████████ █████ ██████████████   ",
            "    █████████ ██████████ █████████ █████ █████ ████ █████   ",
            "  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
            " ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
            "                                                                       ",
            "                                                                       ",
            "                                                                       ",
        }
        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file" ,   "<Cmd>ene | startinsert<CR>"),
            dashboard.button("f", "  Find file",   "<Cmd>Telescope find_files<CR>"),
            dashboard.button("q", "  Quit NeoVim", "<Cmd>qa<CR>"),
        }
        require("alpha").setup(dashboard.opts)
    end
}
