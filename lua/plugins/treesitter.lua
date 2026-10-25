vim.pack.add({
  "https://github.com/romus204/tree-sitter-manager.nvim",
  "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
  "https://github.com/windwp/nvim-ts-autotag",
})

require("tree-sitter-manager").setup({
  -- nohighlight = { "tsx"},
  highlight = { "lua", "go" },
})
require("nvim-ts-autotag").setup()
