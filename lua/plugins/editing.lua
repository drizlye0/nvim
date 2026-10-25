vim.pack.add({
  "https://github.com/windwp/nvim-autopairs",
  "https://github.com/kylechui/nvim-surround",
  "https://github.com/max397574/better-escape.nvim",
})

require("nvim-autopairs").setup()

require("better_escape").setup({
  default_mappings = false,

  mappings = {
    i = {
      j = {
        k = "<Esc>",
        j = "<Esc>",
      },
    },
    t = {
      j = {
        k = "<Esc>",
        j = "<Esc>",
      },
    },
  },
})
