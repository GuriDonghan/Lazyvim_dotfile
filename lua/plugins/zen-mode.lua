return {
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        window = {
          width = 0.85,
        },
        -- plugins = {
        --   wezterm = {
        --     enabled = true,
        --     font = "+2",
        --   },
        -- },
      })
    end,
  },
  {
    "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      context = 15,
    },
  },
}
