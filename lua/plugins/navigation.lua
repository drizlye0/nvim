vim.pack.add({
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/mrjones2014/smart-splits.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  {
    src = "https://github.com/theprimeagen/harpoon",
    version = "harpoon2",
  },
})

require("oil").setup({
  view_options = {
    show_hidden = true,
  }
})
require("smart-splits").setup()
require("harpoon"):setup()
