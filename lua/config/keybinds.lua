vim.g.mapleader = " "

local map = vim.keymap.set
local unmap = vim.keymap.del

map("n", "\\", vim.cmd.Ex)
map("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>", { silent = true })
