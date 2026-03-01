return {
  "mrjones2014/smart-splits.nvim",
  branch = "master",
  lazy = false,
  config = function()
    vim.keymap.set("t", "<C-h>", require("smart-splits").move_cursor_left)
    vim.keymap.set("t", "<C-j>", require("smart-splits").move_cursor_down)
    vim.keymap.set("t", "<C-k>", require("smart-splits").move_cursor_up)
    vim.keymap.set("t", "<C-l>", require("smart-splits").move_cursor_right)
    vim.keymap.set("t", "<C-\\>", require("smart-splits").move_cursor_previous)

    -- swapping buffers between windows
    vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
    vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
    vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
    vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)
  end,
}

-- or use a specific version, or a range of versions using lazy.nvim's version API
