return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	config = function()
		local fzf = require("fzf-lua")
		fzf.setup({
			"hide",
			winopts = {
				tressitter = {
					enabled = false,
				},
				preview = {
          default = "bat",
					layout = "vertical",
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Fzf find files" })
		vim.keymap.set("n", "<leader>fw", fzf.grep, { desc = "Fzf live grep" })
		vim.keymap.set("n", "<leader>fz", fzf.zoxide, { desc = "Fzf zoxide" })
	end,
}
