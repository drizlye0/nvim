return {
	{
		"L3MON4D3/LuaSnip",

		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
			require("luasnip").filetype_extend("dart", { "flutter" })
		end,
	},
	{
		"saghen/blink.cmp",
		version = "*",
		config = function()
			require("blink.cmp").setup({
				fuzzy = { implementation = "prefer_rust" },
				snippets = { preset = "luasnip" },
				signature = { enabled = true },
				appearance = {
					use_nvim_cmp_as_default = false,
					nerd_font_variant = "normal",
				},
				sources = {
					default = { "snippets", "lsp", "path", "buffer" },
					providers = {
						cmdline = {
							min_keyword_length = 2,
						},
					},
				},
				keymap = {
					preset = "enter",
				},
				cmdline = {
					enabled = false,
					completion = { menu = { auto_show = true } },
					keymap = {
						["<CR>"] = { "accept_and_enter", "fallback" },
					},
				},
				completion = {
					menu = {
						draw = {
							columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
							treesitter = { "lsp" },
						},
					},
					documentation = {
						window = {
							border = nil,
							scrollbar = false,
							winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
						},
						auto_show = true,
						auto_show_delay_ms = 500,
					},
				},
			})
		end,
	},
	{
		"mason-org/mason.nvim",
    opts = {

    }
	},
}
