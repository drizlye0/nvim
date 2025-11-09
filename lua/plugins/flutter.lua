return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = true,
  ft = "dart",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("flutter-tools").setup({
			lsp = {
				settings = {
					enableSnippets = false,
				},
			},
		})
	end,
}
