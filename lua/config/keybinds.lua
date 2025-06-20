vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "\\", vim.cmd.Ex)
map("n", "dw", 'vb"_d')
