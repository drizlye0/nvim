return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					go = { "gofmt" },
				},
				format_on_save = {
					timeout_ms = 400,
					lsp_format = "fallback",
				},
			})
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
	},
}
