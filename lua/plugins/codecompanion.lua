return {
  {
    "echasnovski/mini.diff",
    config = function()
      local diff = require("mini.diff")
      diff.setup({
        -- Disabled by default
        source = diff.gen_source.none(),
      })
    end,
  },
  {
    "mrjones2014/legendary.nvim",
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    -- sqlite is only needed if you want to use frecency sorting
    -- dependencies = { 'kkharji/sqlite.lua' }
  },
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
      "nvim-treesitter/nvim-treesitter",
      -- The following are optional:
      { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
    },
    config = function()
      require("codecompanion").setup({
        adapters = {
          anthropic = function()
            return require("codecompanion.adapters").extend("anthropic", {
              env = {
                api_key = os.getenv("ANTHROPIC_API_KEY"),
              },
            })
          end,
          copilot = function()
            return require("codecompanion.adapters").extend("copilot", {
              schema = {
                model = {
                  default = "claude-3.5-sonnet",
                },
              },
            })
          end,
          -- gemini = function()
          --   return require("codecompanion.adapters").extend("gemini", {
          --     env = {
          --       api_key = "cmd:op read op://personal/Gemini_API/credential --no-newline",
          --     },
          --   })
          -- end,
          openai = function()
            return require("codecompanion.adapters").extend("openai", {
              env = {
                api_key = os.getenv("OPENAI_API_KEY"),
              },
            })
          end,
          -- xai = function()
          --   return require("codecompanion.adapters").extend("xai", {
          --     env = {
          --       api_key = "cmd:op read op://personal/xAI_API/credential --no-newline",
          --     },
          --   })
          -- end,
        },
        strategies = {
          chat = {
            keymaps = {
              send = {
                modes = {
                  i = { "<C-CR>", "<C-s>" },
                },
              },
            },
            roles = { llm = "🤖 CodeCompanion", user = "👨🏻 Guri" },
            slash_commands = {
              ["buffer"] = {
                opts = {
                  provider = "telescope",
                },
              },
              ["file"] = {
                opts = {
                  provider = "telescope",
                },
              },
            },
          },
        },
        display = {
          chat = {
            show_references = true,
            show_header_separator = false,
            show_settings = false,
            -- NOTE: using render-markdown
            render_headers = false,
          },
          diff = {
            provider = "mini_diff",
          },
        },
        opts = {
          log_level = "DEBUG",
          -- NOTE: Korean
          language = "Korean",
        },
      })
    end,
    init = function()
      vim.cmd([[cab cc CodeCompanion]])
      require("legendary").keymaps({
        {
          itemgroup = "CodeCompanion",
          icon = "",
          description = "Use the power of AI...",
          keymaps = {
            {
              "<C-a>",
              "<cmd>CodeCompanionActions<CR>",
              description = "Open the action palette",
              mode = { "n", "v" },
            },
            {
              "<LocalLeader>a",
              "<cmd>CodeCompanionChat Toggle<CR>",
              description = "Toggle a chat buffer",
              mode = { "n", "v" },
            },
            {
              "ga",
              "<cmd>CodeCompanionChat Add<CR>",
              description = "Add selected text to a chat buffer",
              mode = { "n", "v" },
            },
          },
        },
      })
    end,
  },
}
