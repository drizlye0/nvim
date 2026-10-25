vim.pack.add({
  "https://github.com/ellisonleao/gruvbox.nvim",
  "https://github.com/webhooked/kanso.nvim",
})

-- require("kanso").setup({
--   foreground = "saturated",
--   transparent = false,
--   overrides = function()
--     return {
--       StatusLine = { bg = "#22262d" },
--       StatusLineNC = { bg = "#22262d" }
--     }
--   end
-- })

require("gruvbox").setup({
  contrast = "hard",
  transparent_mode = true,
  overrides = {
    StatusLine = { bg = "#3c3836" },
    StatusLineNC = { bg = "#3c3836" },
  },
})

vim.cmd("colorscheme gruvbox")
