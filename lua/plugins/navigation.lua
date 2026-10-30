vim.pack.add({
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/mrjones2014/smart-splits.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/lmilojevicc/herdr-splits.nvim",
  {
    src = "https://github.com/theprimeagen/harpoon",
    version = "harpoon2",
  },
  "https://github.com/nvim-tree/nvim-tree.lua"
})

require("oil").setup({
  view_options = {
    show_hidden = true,
  }
})
require("nvim-tree").setup()
require("smart-splits").setup()
require("harpoon"):setup()
require("herdr-splits").setup()
