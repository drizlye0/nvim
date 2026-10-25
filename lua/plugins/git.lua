vim.pack.add({
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/esmuellert/codediff.nvim",
})

require("gitsigns").setup()
require("codediff").setup()
