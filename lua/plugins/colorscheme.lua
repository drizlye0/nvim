return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
      })

      -- vim.cmd("colorscheme gruvbox")
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme solarized-osaka")
    end,
    opts = {},
  },
}
