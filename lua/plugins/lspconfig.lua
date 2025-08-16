return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		local servers = {
			clangd = {},
		}

		for server, config in pairs(servers) do
			lspconfig[server].setup(config)
		end
	end,
}
