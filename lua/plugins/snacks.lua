return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    notify = { enabled = true },

    -- NOTE: Notifier
    notifier = {
      enabled = true,
      icons = {
        error = " ",
        warn = " ",
        info = " ",
        debug = " ",
        trace = " ",
      },
      style = "compact",
      top_down = true, -- place notifications from top to bottom
      date_format = "%R", -- time format for notifications
      refresh = 50, -- refresh at most every 50ms
    },

    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },

    -- NOTE: Dashboard
    dashboard = {
      enabled = true,
      preset = {
        header = [[
███╗   ██╗  █████╗  ██╗   ██╗ ███████╗ ██████╗
  ████╗  ██║ ██╔══██╗ ██║   ██║ ██╔════╝ ██╔══██╗
  ██╔██╗ ██║ ███████║ ██║   ██║ █████╗   ██████╔╝
  ██║╚██╗██║ ██╔══██║ ╚██╗ ██╔╝ ██╔══╝   ██╔══██╗
  ██║ ╚████║ ██║  ██║  ╚████╔╝  ███████╗ ██║  ██║
  ╚═╝  ╚═══╝ ╚═╝  ╚═╝   ╚═══╝   ╚══════╝ ╚═╝  ╚═╝]],
      },
      sections = {
        { section = "header" },
        -- { section = "keys", gap = 1, padding = 1 },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
        -- {
        --   section = "terminal",
        --   cmd = "pokemon-colorscripts -r --no-title; sleep .1",
        --   random = 10,
        --   pane = 2,
        --   indent = 4,
        --   height = 30,
        --   padding = 5,
        -- },
      },
    },
    sytles = {
      notification = {
        border = "rounded",
        zindex = 100,
        ft = "markdown",
        wo = {
          winblend = 5,
          wrap = false,
          conceallevel = 2,
          colorcolumn = "",
        },
        bo = { filetype = "snacks_notif" },
        history = {
          border = "rounded",
          zindex = 100,
          width = 0.6,
          height = 0.6,
          minimal = false,
          title = "Notification History",
          title_pos = "center",
          ft = "markdown",
          bo = { filetype = "snacks_notif_history" },
          wo = { winhighlight = "Normal:SnacksNotifierHistory" },
          keys = { q = "close" },
        },
      },
    },
  },
}
