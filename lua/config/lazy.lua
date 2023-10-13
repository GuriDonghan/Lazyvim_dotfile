local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      opts = {
        news = {
          lazyvim = true,
          neovim = true,
        },
      },
    },
    -- -- import any extras modules here
    -- -- lang
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.lang.python" },
    -- { import = "lazyvim.plugins.extras.lang.docker" },
    --
    -- -- formatting
    -- { import = "lazyvim.plugins.extras.formatting.prettier" },
    --
    -- --eslint
    -- { import = "lazyvim.plugins.extras.linting.eslint" },
    --
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- { import = "lazyvim.plugins.extras.linting.eslint" },
    -- { import = "lazyvim.plugins.extras.lang.tailwind" },
    -- { import = "lazyvim.plugins.extras.dap.core" },
    -- { import = "lazyvim.plugins.extras.dap.nlua" },
    -- { import = "lazyvim.plugins.extras.ui.edgy" },
    -- { import = "lazyvim.plugins.extras.vscode" },
    -- { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
    --
    -- -- Coding
    -- { import = "lazyvim.plugins.extras.coding.copilot" },
    -- { import = "lazyvim.plugins.extras.coding.yanky" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    cache = {
      enabled = true,
      -- disable_events = {},
    },
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        "netrwPlugin",
        "rplugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },

  -- build = function()
  --   local shell = require("nvim-treesitter.shell_command_selectors")
  --   local install = require("nvim-treesitter.install")
  --
  --   -- save the original functions
  --   local select_executable = shell.select_executable
  --   local compilers = install.compilers
  --
  --   -- temporarily patch treesitter install logic
  --   local cc = "clang++ -std=c++11"
  --   function shell.select_executable(executables)
  --     return vim.tbl_filter(function(c) ---@param c string
  --       return c ~= vim.NIL and (vim.fn.executable(c) == 1 or c == cc)
  --     end, executables)[1]
  --   end
  --   install.compilers = { cc }
  --
  --   -- install norg parsers
  --   install.commands.TSInstallSync["run!"]("norg") -- or vim.cmd [[ :TSInstallSync! norg ]]
  --
  --   -- restore the defaults back
  --   shell.select_executable = select_executable
  --   install.compilers = compilers
  -- end,
})
