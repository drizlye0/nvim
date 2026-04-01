vim.g.mapleader = " "

local map = vim.keymap.set

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "\\", "<cmd>NvimTreeToggle<CR>")
map("n", "<leader>f", "<cmd>Format<CR>")
-- map("n", "<esc><esc>", "<cmd>nohls<CR>", { silent = true})
map("n", "dw", 'vb"_d')
map("n", "<leader>v", "<cmd>vsplit<CR>")
map("n", "<leader>g", "<cmd>split<CR>")
map("n", "<leader>rn", ":IncRename ")

map("n", "gs", "<cmd>LspClangdSwitchSourceHeader<CR>")
