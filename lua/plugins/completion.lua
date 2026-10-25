vim.pack.add({
  "https://github.com/saghen/blink.lib",
  "https://github.com/saghen/blink.cmp",
  "https://github.com/rafamadriz/friendly-snippets",
})

-- require("luasnip.loaders.from_vscode").lazy_load()
require("blink.cmp").setup({
  fuzzy = {
    implementation = "lua",
  },

  completion = {
    documentation = {
      auto_show = true,
    },

    keyword = {
      range = "prefix",
    },
  },

  keymap = {
    preset = "enter",
  },
})

vim.lsp.config("*", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})
