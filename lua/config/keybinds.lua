vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "\\", "<cmd>Noetree toggle<CR>")
map("n", "dw", 'vb"_d')
