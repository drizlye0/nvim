-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

vim.keymap.set("n", "\\", "<CMD>Oil<CR>", { desc = "Open parent directory" })

map("i", "jj", "<Esc>")
map("i", "jk", "<Esc>")

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<leader>f", "<cmd>LazyFormat<CR>", { desc = "switch window up" })

map("n", "<leader>v", "<cmd>vsplit<CR>")
map("n", "<leader>g", "<cmd>split<CR>")
map("n", "<leader>rn", "<cmd>IncRename<CR>")
