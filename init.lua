vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.pack.add({ "https://github.com/jake-stewart/multicursor.nvim" })
vim.pack.add({ 'https://github.com/saghen/blink.lib' })
vim.pack.add({ "https://github.com/webhooked/kanso.nvim" })
vim.pack.add({ "https://github.com/sschleemilch/slimline.nvim" })
vim.pack.add({ "https://github.com/nvim-telescope/telescope.nvim" })
vim.pack.add({ "https://github.com/nvim-telescope/telescope-fzf-native.nvim" })
vim.pack.add({ "https://github.com/nvim-tree/nvim-tree.lua" })
vim.pack.add({ "https://github.com/stevearc/oil.nvim",
  "https://github.com/romus204/tree-sitter-manager.nvim",
  "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
  "https://github.com/windwp/nvim-autopairs",
  "https://github.com/mrjones2014/smart-splits.nvim",
  "https://github.com/windwp/nvim-ts-autotag",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/mason-org/mason-lspconfig.nvim",            -- lspconfig bridge
  "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim", -- auto installer
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/esmuellert/codediff.nvim",
  "https://github.com/kylechui/nvim-surround",
  "https://github.com/nvim-lua/plenary.nvim",
  {
    src = "https://github.com/saghen/blink.cmp",
  },
  "https://github.com/max397574/better-escape.nvim",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("oil").setup({
  view_options = {
    show_hidden = true,
  }
})
require("tree-sitter-manager").setup({
  -- nohighlight = { "tsx"},
  highlight = { "lua", "go" },
})
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
-- require("luasnip.loaders.from_vscode").lazy_load()
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
    typescript = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    cpp = { "clang-format" },
  },
})
require("codediff").setup()

require("better_escape").setup({
  default_mappings = false,

  mappings = {
    i = {
      j = {
        k = "<Esc>",
        j = "<Esc>",
      },
    },
    t = {
      j = {
        k = "<Esc>",
        j = "<Esc>",
      },
    },
  },
})

require("kanso").setup({
  foreground = "saturated",
  transparent = false,
  overrides = function()
    return {
      StatusLine = { bg = "#22262d" },
      StatusLineNC = { bg = "#22262d" }
    }
  end
})
vim.cmd("colorscheme kanso-zen")

require("slimline").setup({
  style = 'fg',
  bold = true,
  configs = {
    mode = {
      verbose = true,
    },
    path = {
      hl = {
        primary = 'Label',
      },
    },
    git = {
      hl = {
        primary = 'Function',
      },
    },
    filetype_lsp = {
      hl = {
        primary = 'String',
      },
    },
  },

  hl = {
    base = 'StatusLine', -- highlight of the background
  }
})

require("telescope").setup({
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",
    }
  }
})

require("nvim-tree").setup()
require("multicursor-nvim").setup()

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fw", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)

require("options")
require("keybinds")
require("lsp")
