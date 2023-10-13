return {
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    event = "VeryLazy",
    config = function()
      require("telekasten").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        home = vim.fn.expand(
          "/Users/user/Library/Mobile Documents/iCloud~md~obsidian/Documents/Guri repo/zettelkasten"
        ),
        -- auto-set telekasten filetype: if false, the telekasten filetype will not be used
        auto_set_filetype = false,

        image_subdir = "images",
      })
    end,
  },
  {
    "renerocksai/calendar-vim",
  },
}
