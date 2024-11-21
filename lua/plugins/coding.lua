return {

  -- --NOTE: Github Copilot (don't use Copilot CMP)
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   opts = {
  --     suggestion = {
  --       auto_trigger = true,
  --       debounce = 150,
  --       -- keymap = {
  --       --   accept = "<tab>",
  --       --   accept_word = "<C-l>",
  --       --   accept_line = "<C-j>",
  --       --   next = "<C-x>",
  --       --   prev = "<C-z>",
  --       --   dismiss = "<C-c>",
  --       -- },
  --     },
  --     filetypes = { ["*"] = true },
  --   },
  -- },

  -- -- lnsert Github marks to lualine for Copilot
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   optional = true,
  --   event = "VeryLazy",
  --   opts = function(_, opts)
  --     local Util = require("lazyvim.util")
  --     local colors = {
  --       [""] = Util.ui.fg("Special"),
  --       ["Normal"] = Util.ui.fg("Special"),
  --       ["Warning"] = Util.ui.fg("DiagnosticError"),
  --       ["InProgress"] = Util.ui.fg("DiagnosticWarn"),
  --     }
  --     table.insert(opts.sections.lualine_x, 2, {
  --       function()
  --         local icon = require("lazyvim.config").icons.kinds.Copilot
  --         local status = require("copilot.api").status.data
  --         return icon .. (status.message or "")
  --       end,
  --       cond = function()
  --         local ok, clients = pcall(vim.lsp.get_active_clients, { name = "copilot", bufnr = 0 })
  --         return ok and #clients > 0
  --       end,
  --       color = function()
  --         local status = require("copilot.api").status.data
  --         return colors[status.status] or colors[""]
  --       end,
  --     })
  --   end,
  -- },

  -- better indentation behavior
  -- by default, vim has some weird indentation behavior in some edge cases,
  -- which this plugin fixes
  { "Vimjas/vim-python-pep8-indent" },

  -- smart selection, smart increnmental selection
  -- TODO: Nvim-Treesitter uptdate 확인 필요
  {
    "sustech-data/wildfire.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("wildfire").setup({
        surrounds = {
          { "(", ")" },
          { "{", "}" },
          { "<", ">" },
          { "[", "]" },
        },
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          node_decremental = "<BS>",
          -- init_selection = "v",
          -- node_incremental = "v",
          -- node_decremental = "V",
        },
        filetype_exclude = { "qf" }, --keymaps will be unset in excluding filetypes
      })
    end,
  },

  {
    "nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    end,
  },
}
