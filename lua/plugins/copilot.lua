return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = true,
				accept = false,
			},
		})

		vim.keymap.set("i", "<A-l>", function()
			if require("copilot.suggestion").is_visible then
				require("copilot.suggestion").accept()
			end
		end, {
			silent = true,
			desc = "Accept Copilot suggestion",
		})
	end,
}
