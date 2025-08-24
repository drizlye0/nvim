vim.g.mapleader = " "

local map = vim.keymap.set

local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
vim.keymap.set("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

map("n", "\\", "<cmd>NvimTreeToggle<CR>")
map("n", "<leader>f", "<cmd>Format<CR>")
-- map("n", "<esc><esc>", "<cmd>nohls<CR>", { silent = true})
map("n", "dw", 'vb"_d')

