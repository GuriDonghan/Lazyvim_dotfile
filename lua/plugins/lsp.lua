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

  {
    "mfussenegger/nvim-lint",
    opts = {
      --     linters_by_ft = {
      --       lua = { "selene", "luacheck" },
      --       markdown = { "markdownlint" },
      --     },
      linters = {
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
        markdownlint = {
          args = { "--config", "~/.markdownlint.jsonc", "--" },
        },
      },
    },
  },
}
