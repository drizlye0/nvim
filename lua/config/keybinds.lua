vim.g.mapleader = " "

local map = vim.keymap.set
local unmap = vim.keymap.del

map("n", "\\", vim.cmd.Ex)
