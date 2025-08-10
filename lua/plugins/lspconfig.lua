return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local esp32 = require("esp32")

		local servers = {
			clangd = esp32.lsp_config(),
		}

		for server, config in pairs(servers) do
			lspconfig[server].setup(config)
		end
	end,
}
