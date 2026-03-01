require("nvchad.configs.lspconfig").defaults()

--- @type vim.lsp.config
  ---@diagnostic disable: missing-fields
vim.lsp.config.clangd = {
  cmd = {
    "clangd",
    "--function-arg-placeholders=0",
    "--clang-tidy",
    "--background-index",
    "--offset-encoding=utf-8",
    "--header-insertion=never",
  },
}

local servers = { "html", "cssls", "clangd", "gopls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
