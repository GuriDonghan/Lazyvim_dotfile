return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "css-lsp",
        "taplo",
      })
    end,
  },

  -- -- HACK: LSP keymap 변경
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = function(_, opts)
  --     local keys = require("lazyvim.plugins.lsp.keymaps").get()
  --     -- <C-k> 키를 비활성화
  --     keys[#keys + 1] = { "<c-k>", false, mode = "i" }
  --     opts.keys = keys
  --   end,
  -- },

  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {

      ---@type lspconfig.options
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "recommended",
                autoImportCompletions = true,
                diagnosticSeverityOverrides = {
                  reportUnusedImport = "information",
                  reportUnusedFunction = "information",
                  reportUnusedVariable = "information",
                  reportGeneralTypeIssues = "none",
                  reportOptionalMemberAccess = "none",
                  reportOptionalSubscript = "none",
                  reportPrivateImportUsage = "none",
                },
                diagnosticMode = "openFilesOnly",
              },
            },
            python = {
              pythonPath = ".venv/bin/python",
            },
          },
        },
      },
    },
  },

  -- {
  --   "stevearc/conform.nvim",
  --   optional = true,
  --   opts = {
  --     formatters_by_ft = {
  --       lua = { "stylua" },
  --       python = { "isort", "black" },
  --       -- NOTE: Lazyvim extra setting
  --       -- markdown = { "inject" },
  --       -- javascript = { "dprint" },
  --       -- javascriptreact = { "dprint" },
  --       -- typescript = { "dprint" },
  --       -- typescriptreact = { "dprint" },
  --     },
  --     -- formatters = {
  --     --   dprint = {
  --     --     condition = function(self, ctx)
  --     --       return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
  --     --     end,
  --     --   },
  --     -- },
  --     -- format_on_save = {
  --     --   -- when no formatter is setup for a filetype, fallback to formatting
  --     --   -- via the LSP. This is relevant e.g. for taplo (toml LSP), where the
  --     --   -- LSP can handle the formatting for us
  --     --   timeout_ms = 500,
  --     --   lsp_fallback = true,
  --     -- },
  --   },
  -- },
  -- {
  --   "mfussenegger/nvim-lint",
  --   opts = {
  --     linters_by_ft = {
  --       lua = { "selene", "luacheck" },
  --       markdown = { "markdownlint" },
  --     },
  --     linters = {
  --       selene = {
  --         condition = function(ctx)
  --           return vim.fs.find({ "selene.toml" }, { path = ctx.filename, upward = true })[1]
  --         end,
  --       },
  --       luacheck = {
  --         condition = function(ctx)
  --           return vim.fs.find({ ".luacheckrc" }, { path = ctx.filename, upward = true })[1]
  --         end,
  --       },
  --       markdownlint = {
  --         args = {
  --           "--disable",
  --           "MD041",
  --           "MD013",
  --           "MD018",
  --           "MD029",
  --           "MD028",
  --           "--",
  --         },
  --       },
  --     },
  --   },
  -- },
}
