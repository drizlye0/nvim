local map = vim.keymap.set

-- Plugins
map("n", "\\", "<cmd>Oil<CR>", { desc = "Open parent directory" } )
map("n", "<leader>ff", "<cmd>FzfLua files<CR>")
map("n", "<leader>fw", "<cmd>FzfLua live_grep<CR>")

vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
			-- moving between splits
			vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
			vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
			vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
			vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
			vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)

			vim.keymap.set("t", "<C-h>", require("smart-splits").move_cursor_left)
			vim.keymap.set("t", "<C-j>", require("smart-splits").move_cursor_down)
			vim.keymap.set("t", "<C-k>", require("smart-splits").move_cursor_up)
			vim.keymap.set("t", "<C-l>", require("smart-splits").move_cursor_right)
			vim.keymap.set("t", "<C-\\>", require("smart-splits").move_cursor_previous)

			vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
			vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
			vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
			vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)

--

-- Maps
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<leader>v", "<cmd>vsplit<CR>")
map("n", "<leader>g", "<cmd>split<CR>")
