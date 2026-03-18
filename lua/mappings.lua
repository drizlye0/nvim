require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local unmap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })

unmap({ "n", "x" }, "<leader>fm")
unmap({ "n" }, "<leader>h")
unmap({ "n" }, "<leader>v")
unmap("n", "<C-n>")
unmap("n", "<leader>e")

unmap("n", "<C-h>")
unmap("n", "<C-l>")
unmap("n", "<C-j>")
unmap("n", "<C-k>")

unmap({ "n", "t" }, "<A-h>")
unmap({ "n", "t" }, "<A-v>")

map("n", "<C-h>", require("smart-splits").move_cursor_left)
map("n", "<C-j>", require("smart-splits").move_cursor_down)
map("n", "<C-k>", require("smart-splits").move_cursor_up)
map("n", "<C-l>", require("smart-splits").move_cursor_right)
map("n", "<C-\\>", require("smart-splits").move_cursor_previous)

vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)

map("i", "jk", "<ESC>")
map("n", "\\", "<cmd>NvimTreeToggle<CR>")

map({ "n", "x" }, "<leader>f", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

map("n", "<leader>th", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "New toggleable horizontal term" })

map("n", "<leader>tv", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "New toggleable vertical term" })

map("n", "<leader>ft", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })

map("n", "<leader>h", "<cmd>split<CR>", { desc = "Horizontal split" })
map("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Vertical split" })
map("t", "<esc><esc>", "<C-\\><C-n>")
map("n", "gw", "<cmd>lua vim.diagnostic.open_float()<CR>")
map("n", "gs", "<cmd>LspClangdSwitchSourceHeader<CR>")
