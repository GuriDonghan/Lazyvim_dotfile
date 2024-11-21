return {
  {
    "mikesmithgh/kitty-scrollback.nvim",
    enabled = true,
    lazy = true,
    cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
    event = { "User KittyScrollbackLaunch" },
    -- version = '*', -- latest stable version, may have breaking changes if major version changed
    -- version = '^5.0.0', -- pin major version, include fixes and features that do not have breaking changes
    config = function()
      require("kitty-scrollback").setup({
        myconfig = {
          kitty_get_text = {
            ansi = false,
          },
        },
        myfnconfig = function(kitty_data)
          return {
            kitty_get_text = {
              extent = (kitty_data.scrolled_by > kitty_data.lines) and "all" or "screen",
            },
          }
        end,
      })
    end,
  },
}
