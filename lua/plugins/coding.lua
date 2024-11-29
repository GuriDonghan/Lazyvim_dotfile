return {
  "tpope/vim-sleuth", -- Automatically detects which indents should be used in the current buffer

  -- TEST: Neotab
  {
    "kawre/neotab.nvim",
    event = "InsertEnter",
    opts = {
      -- configuration goes here
      {
        tabkey = "<Tab>",
        act_as_tab = true,
        behavior = "nested", ---@type ntab.behavior
        pairs = { ---@type ntab.pair[]
          { open = "(", close = ")" },
          { open = "[", close = "]" },
          { open = "{", close = "}" },
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = "`", close = "`" },
          { open = "<", close = ">" },
        },
        exclude = {},
        smart_punctuators = {
          enabled = false,
          semicolon = {
            enabled = false,
            ft = { "cs", "c", "cpp", "java" },
          },
          escape = {
            enabled = false,
            triggers = {}, ---@type table<string, ntab.trigger>
          },
        },
      },
    },
  },

  -- HACK: Tabout in ',",`,(,[,{'
  -- {
  --   "abecodes/tabout.nvim",
  --   lazy = false,
  --   config = function()
  --     require("tabout").setup({
  --       tabkey = "<Tab>",             -- key to trigger tabout, set to an empty string to disable
  --       backwards_tabkey = "<S-Tab>", -- key to trigger backwards tabout, set to an empty string to disable
  --       act_as_tab = true,            -- shift content if tab out is not possible
  --       act_as_shift_tab = false,     -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
  --       default_tab = "<C-t>",        -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
  --       default_shift_tab = "<C-d>",  -- reverse shift default action,
  --       enable_backwards = true,      -- well ...
  --       completion = true,            -- if the tabkey is used in a completion pum
  --       tabouts = {
  --         { open = "'", close = "'" },
  --         { open = '"', close = '"' },
  --         { open = "`", close = "`" },
  --         { open = "(", close = ")" },
  --         { open = "[", close = "]" },
  --         { open = "{", close = "}" },
  --       },
  --       ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
  --       exclude = {}, -- tabout will ignore these filetypes
  --     })
  --   end,
  --   dependencies = { -- These are optional
  --     "nvim-treesitter/nvim-treesitter",
  --     "L3MON4D3/LuaSnip",
  --     "hrsh7th/nvim-cmp",
  --   },
  --   opt = true,              -- Set this to true if the plugin is optional
  --   event = "InsertCharPre", -- Set the event to 'InsertCharPre' for better compatibility
  --   priority = 1000,
  --   specs = {
  --     {
  --       "hrsh7th/nvim-cmp",
  --       optional = true,
  --       opts = function(_, opts)
  --         local cmp = require("cmp")
  --         local snippet_jumpable = function()
  --           return vim.snippet and vim.snippet.active({ direction = 1 })
  --         end
  --         local snippet_jump = vim.schedule_wrap(function()
  --           vim.snippet.jump(1)
  --         end)
  --         local luasnip_avail, luasnip = pcall(require, "luasnip")
  --         if luasnip_avail then
  --           snippet_jumpable = luasnip.expand_or_jumpable
  --           snippet_jump = luasnip.expand_or_jump
  --         end
  --         opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
  --           if cmp.visible() then
  --             cmp.select_next_item()
  --           elseif vim.api.nvim_get_mode() ~= "c" and snippet_jumpable() then
  --             snippet_jump()
  --           elseif not luasnip_avail and pcall(vim.snippet.active, { direction = 1 }) then
  --             vim.snippet.jump(1)
  --           else
  --             fallback()
  --           end
  --         end, { "i", "s" })
  --
  --         opts.mapping["<S-Tab>"] = cmp.mapping(function(fallback)
  --           if cmp.visible() then
  --             cmp.select_prev_item()
  --           elseif vim.api.nvim_get_mode() ~= "c" and snippet_jumpable() then
  --             snippet_jump()
  --           elseif not luasnip_avail and pcall(vim.snippet.active, { direction = -1 }) then
  --             vim.snippet.jump(-1)
  --           else
  --             fallback()
  --           end
  --         end, { "i", "s" })
  --       end,
  --     },
  --   },
  -- },

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
