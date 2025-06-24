vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "\\", "<cmd>Neotree toggle<CR>")
map("n", "dw", 'vb"_d')
