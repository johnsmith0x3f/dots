return {
  name = "MarkdownPreview", "iamcco/markdown-preview.nvim",

  -- Build options.
  build = "cd app && npm install",

  -- Lazy-load options.
  ft = { "markdown" },
  keys = {
    { mode = "n", "<Leader>pm", "<Cmd>MarkdownPreviewToggle<CR>" }
  }
}
