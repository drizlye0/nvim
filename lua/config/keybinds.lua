vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "\\", "<cmd>NvimTreeToggle<CR>")
map("n", "<leader>f", "<cmd>Format<CR>")
-- map("n", "<esc><esc>", "<cmd>nohls<CR>", { silent = true})
map("n", "dw", 'vb"_d')
map("n", "<leader>v", "<cmd>vsplit<CR>")
map("n", "<leader>g", "<cmd>split<CR>")
map("n", "<leader>rn", ":IncRename ")

