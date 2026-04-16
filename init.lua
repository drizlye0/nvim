vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/catppuccin/nvim",
	"https://github.com/ibhagwan/fzf-lua",
	"https://github.com/romus204/tree-sitter-manager.nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
	"https://github.com/windwp/nvim-autopairs",
	"https://github.com/mrjones2014/smart-splits.nvim",
	"https://github.com/windwp/nvim-ts-autotag",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/saghen/blink.cmp",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason-lspconfig.nvim", -- lspconfig bridge
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim", -- auto installer
	"https://github.com/kdheepak/lazygit.nvim",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/stevearc/conform.nvim",
})

require("oil").setup()
require("tree-sitter-manager").setup({
	-- nohighlight = { "tsx"},
	highlight = { "lua", "go" },
})
require("fzf-lua").setup({
	winopts = {
		preview = {
			layout = "vertical",
		},

		treesitter = {
			enabled = false,
		},
	},

	"hide",

	file_ignore_patterns = {
		"node_modules/",
		".dart_tool/",
		".idea/",
		"build/",
		".git",
	},

	previewers = {
		builtin = {
			treesitter = {
				enabled = false,
			},
		},
	},
})
require("fzf-lua").register_ui_select()
require("nvim-autopairs").setup()
require("smart-splits").setup()
require("nvim-ts-autotag").setup()
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua_ls",
	},
})
require("blink.cmp").setup({
	fuzzy = {
		implementation = "lua",
	},

	completion = {
		documentation = {
			auto_show = true,
		},

		keyword = {
			range = "prefix",
		},
	},

	keymap = {
		preset = "enter",
	},
})

vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})

require("gitsigns").setup()
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
	},
})

vim.cmd("colorscheme catppuccin-mocha")
require("options")
require("keybinds")
require("lsp")
