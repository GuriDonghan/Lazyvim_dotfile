return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.keybinds"] = {}, -- Adds default keybindings
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      }, -- Enables support for completion plugins
      -- ["core.journal"] = {}, -- Enables support for the journal module
      ["core.autocommands"] = {},
      ["core.integrations.treesitter"] = {},
      ["core.export"] = {},
      ["core.export.markdown"] = {},
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            space = "~/Works/naver_wiki/neorg_works",
          },
          default_workspace = "space",
        },
      },
    },
  },
}
