vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Each lua/plugins/*.lua installs (vim.pack.add) and configures its own plugins; loaded alphabetically.
for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/plugins")) do
  if file:match("%.lua$") then
    require("plugins." .. file:sub(1, -5))
  end
end

require("options")
require("keybinds")
require("lsp")
