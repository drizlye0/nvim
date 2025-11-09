return {
	{

		"zenbones-theme/zenbones.nvim",
    enabled = false,
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		-- you can set set configuration options here
		config = function()
			-- vim.g.zenbones_darken_comments = 45
			-- vim.g.zenbones = { transparent_background = true }
			-- vim.cmd.colorscheme("zenbones")
		end,
	},
	{
		"vague2k/vague.nvim",
    enabled = false,
		config = function()
			-- NOTE: you do not need to call setup if you don't want to.
			require("vague").setup({
				transparent = true,
			})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				contrast = "hard",
				transparent_mode = true
			})

			vim.cmd("colorscheme gruvbox")
			-- -- fix
			-- -- git signs column bg
			-- vim.cmd([[ hi! SignColumn guibg=NONE ]])
			--
			-- -- fix
			-- -- winbar bg
			-- vim.cmd([[ hi! WinBar guibg=NONE ]])
			-- vim.cmd([[ hi! WinBarNC guibg=NONE ]])
			--
			-- -- fix
			-- -- noice cmd line bg
			-- vim.cmd([[ hi! NoiceCmdlinePopup guibg=#282828 ]])
			-- vim.cmd([[ hi! NoiceCmdlinePopupBorder guibg=#282828 ]])
			--
			-- -- fix
			-- -- telescope selection bg
			-- vim.cmd([[ hi! TelescopeSelection guibg=#3c3836 guifg=#fe8019 gui=bold ]])
			--
			-- -- fix
			-- -- diagnostics sign bg (next to numbers line)
			-- vim.cmd([[ hi! DiagnosticSignOk guifg=#b8bb26 guibg=#282828 ]])
			-- vim.cmd([[ hi! DiagnosticSignInfo guifg=#83a598 guibg=#282828 ]])
			-- vim.cmd([[ hi! DiagnosticSignWarn guifg=#fabd2f guibg=#282828 ]])
			-- vim.cmd([[ hi! DiagnosticSignError guifg=#fb4934 guibg=#282828 ]])
			--
			-- -- fix
			-- -- lsp saga bg
			-- vim.cmd([[ hi! SagaNormal guibg=#282828 ]])
		end,
	},
}
