local map = vim.keymap.set
local harpoon = require("harpoon")

-- Plugins
map("n", "\\", "<cmd>Oil<CR>", { desc = "Open parent directory" })
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

vim.api.nvim_create_user_command("Format", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })

map("n", "<leader>f", "<cmd>Format<CR>")
map("n", "<leader>lg", "<cmd>LazyGit<CR>")
map("n", "<leader>fo", "<cmd>Obsidian quick_switch<CR>")
map("n", "<leader>on", "<cmd>Obsidian new<CR>")

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-N>", function() harpoon:list():next() end)
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
