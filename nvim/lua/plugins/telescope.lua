return {
  name = "Telescope", "nvim-telescope/telescope.nvim",
  dependencies = { "plenary" },
  keys = {
    { mode = "n", "<Leader>fa", "<Cmd>Telescope find_files hidden=true<CR>" },
    { mode = "n", "<Leader>ff", "<Cmd>Telescope find_files<CR>" }
  },
  config = function() require("telescope").setup({}) end
}
