vim.pack.add({
  "https://github.com/sschleemilch/slimline.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("slimline").setup({
  style = 'fg',
  bold = true,
  configs = {
    mode = {
      verbose = true,
    },
    path = {
      hl = {
        primary = 'Label',
      },
    },
    git = {
      hl = {
        primary = 'Function',
      },
    },
    filetype_lsp = {
      hl = {
        primary = 'String',
      },
    },
  },

})
