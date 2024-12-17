return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    indent = { enabled = false },
    input = { enabled = true },
    bigfile = { enabled = true },
    animate = { enabled = false },
    scroll = { enabled = true },

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
        -- { section = "header" },
        -- { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        -- { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        -- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        -- { section = "startup" },
        { section = "header" },
        {
          pane = 2,
          section = "terminal",
          cmd = "square",
          height = 5,
          padding = 1,
        },
        { section = "keys", gap = 1, padding = 1 },
        { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        {
          pane = 2,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = vim.fn.isdirectory(".git") == 1,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        { section = "startup" },
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
  -- keys = {
  --   {
  --     "<leader>z",
  --     function()
  --       Snacks.zen()
  --     end,
  --     desc = "Toggle Zen Mode",
  --   },
  --   {
  --     "<leader>Z",
  --     function()
  --       Snacks.zen.zoom()
  --     end,
  --     desc = "Toggle Zoom",
  --   },
  --   {
  --     "<leader>.",
  --     function()
  --       Snacks.scratch()
  --     end,
  --     desc = "Toggle Scratch Buffer",
  --   },
  --   {
  --     "<leader>S",
  --     function()
  --       Snacks.scratch.select()
  --     end,
  --     desc = "Select Scratch Buffer",
  --   },
  --   {
  --     "<leader>n",
  --     function()
  --       Snacks.notifier.show_history()
  --     end,
  --     desc = "Notification History",
  --   },
  --   {
  --     "<leader>bd",
  --     function()
  --       Snacks.bufdelete()
  --     end,
  --     desc = "Delete Buffer",
  --   },
  --   {
  --     "<leader>cR",
  --     function()
  --       Snacks.rename.rename_file()
  --     end,
  --     desc = "Rename File",
  --   },
  --   {
  --     "<leader>gB",
  --     function()
  --       Snacks.gitbrowse()
  --     end,
  --     desc = "Git Browse",
  --   },
  --   {
  --     "<leader>gb",
  --     function()
  --       Snacks.git.blame_line()
  --     end,
  --     desc = "Git Blame Line",
  --   },
  --   {
  --     "<leader>gf",
  --     function()
  --       Snacks.lazygit.log_file()
  --     end,
  --     desc = "Lazygit Current File History",
  --   },
  --   {
  --     "]]",
  --     function()
  --       Snacks.words.jump(vim.v.count1)
  --     end,
  --     desc = "Next Reference",
  --     mode = { "n", "t" },
  --   },
  --   {
  --     "[[",
  --     function()
  --       Snacks.words.jump(-vim.v.count1)
  --     end,
  --     desc = "Prev Reference",
  --     mode = { "n", "t" },
  --   },
  -- },
}
