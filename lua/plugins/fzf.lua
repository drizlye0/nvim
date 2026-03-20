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
				treesitter = {
					enabled = false,
				},
			},
			file_ignore_patterns = {
				"node_modules/",
				".dart_tool/",
				".idea/",
				"build/",
				".git",
			},

			previewers = {
				bat = {
					cmd = "bat",
					args = "--theme=base16",
				},

				builtin = {
					treesitter = {
						enabled = false,
					},
				},
			},
		})

		fzf.register_ui_select()

		vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Fzf find files" })
		vim.keymap.set("n", "<leader>fw", fzf.grep, { desc = "Fzf live grep" })
		vim.keymap.set("n", "<leader>fz", fzf.zoxide, { desc = "Fzf zoxide" })
	end,
}
