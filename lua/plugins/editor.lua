return {
  { "mrjones2014/smart-splits.nvim" },
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    config = function()
      require("oil").setup()
    end,
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },

  {
    "akinsho/bufferline.nvim",
    enabled = false,
    config = function()
      require("bufferline").setup({
        options = {
          mode = "tabs",
        },
      })
    end,
  },

  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
      require("noice").setup({
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },

        routes = {
          {
            filter = {
              event = "lsp",
              kind = "progress",
              cond = function(message)
                local client = vim.tbl_get(message.opts, "progress", "client")
                return client == "jdtls"
              end,
            },
            opts = { skip = true },
          },
        },
      })
    end,
  },

  {
    "saghen/blink.cmp",
    opts = {
      cmdline = { enabled = false },
    },
  },
}
