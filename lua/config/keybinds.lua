vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "\\", "<cmd>NvimTreeToggle<CR>")
map("n", "<leader>f", "<cmd>Format<CR>")
map("n", "dw", 'vb"_d')
