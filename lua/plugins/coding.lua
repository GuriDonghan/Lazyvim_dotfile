return {
  -- huggingface
  -- {
  --   "huggingface/hfcc.nvim",
  --   opts = {
  --     api_token = "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",
  --     model = "bigcode/starcoder",
  --     query_params = {
  --       max_new_tokens = 200,
  --     },
  --   },
  --   init = function()
  --     vim.api.nvim_create_user_command("StarCoder", function()
  --       require("hfcc.completion").complete()
  --     end, {})
  --   end,
  -- },

  -- Github Copilot (don't use Copilot CMP)
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   opts = {
  --     suggestion = {
  --       auto_trigger = true,
  --       debounce = 150,
  --       keymap = {
  --         accept = "<tab>",
  --         accept_word = "<C-l>",
  --         accept_line = "<C-j>",
  --         next = "<C-x>",
  --         prev = "<C-z>",
  --         dismiss = "<C-c>",
  --       },
  --     },
  --     filetype = {
  --       markdown = true,
  --     },
  --   },
  -- },

  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },

  --wtf.nvim
  {
    "piersolenski/wtf.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    event = "VeryLazy",
    opts = { language = "korean" },
    keys = {
      {
        "gw",
        mode = { "n" },
        function()
          require("wtf").ai()
        end,
        desc = "Debug diagnostic with AI",
      },
      {
        mode = { "n" },
        "gW",
        function()
          require("wtf").search()
        end,
        desc = "Search diagnostic with Google",
      },
    },
  },

  -- Python managing Virtual Environments:
  {
    "ChristianChiarulli/swenv.nvim",
    opts = {},
    keys = {
      {
        "<leader>cc",
        "<cmd>lua require('swenv.api').pick_venv()<cr>",
        desc = "Conda virtual env",
      },
    },
  },

  -- -- lnsert Github marks to lualine for Copilot
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   optional = true,
  --   event = "VeryLazy",
  --   opts = function(_, opts)
  --     local Util = require("lazyvim.util")
  --     local colors = {
  --       [""] = Util.fg("Special"),
  --       ["Normal"] = Util.fg("Special"),
  --       ["Warning"] = Util.fg("DiagnosticError"),
  --       ["InProgress"] = Util.fg("DiagnosticWarn"),
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

  -- {
  --   "smjonas/inc-rename.nvim",
  --   cmd = "IncRename",
  --   config = true,
  -- },

  -- {
  --   "ThePrimeagen/refactoring.nvim",
  --   keys = {
  --     {
  --       "<leader>r",
  --       function()
  --         require("refactoring").select_refactor()
  --       end,
  --       desc = "Refactoring",
  --       mode = "v",
  --       noremap = true,
  --       silent = true,
  --       expr = false,
  --     },
  --   },
  --   opts = {},
  -- },

  {
    "nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    end,
  },

  -- Github Copilot (setting)
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enable = true,
        auto_trigger = true,
        debounce = 150,
        keymap = {
          accept = "<tab>",
          accept_word = "<C-l>",
          accept_line = "<C-j>",
          next = "<C-x>",
          prev = "<C-z>",
          dismiss = "<C-c>",
        },
      },
      filetype = {
        ["*"] = true,
      },
    },
  },
}
