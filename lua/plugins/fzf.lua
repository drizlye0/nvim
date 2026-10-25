vim.pack.add({ "https://github.com/ibhagwan/fzf-lua" })

local fzf = require("fzf-lua")
fzf.setup({
  "hide",
  winopts = {
    preview = { layout = "vertical" },
    treesitter = { enabled = false },
  },
  file_ignore_patterns = {
    "node_modules/",
    ".dart_tool/",
    ".idea/",
    "build/",
    ".git",
  },
  previewers = {
    builtin = {
      treesitter = { enabled = false },
    },
  },
})
fzf.register_ui_select()

vim.keymap.set("n", "<leader>ff", fzf.files)
vim.keymap.set("n", "<leader>fw", fzf.live_grep)
vim.keymap.set("n", "<leader>fb", fzf.buffers)
