return {

  -- -- NOTE: cyberdream colorscheme
  -- {
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     if vim.g.neovide then
  --       require("cyberdream").setup({
  --         transparent = true,

  --         italic_comments = true,

  --         -- Replace all fillchars with ' ' for the ultimate clean look
  --         hide_fillchars = true,

  --         -- Modern borderless telescope theme
  --         -- borderless_telescope = true,

  --         -- Set terminal colors used in `:terminal`
  --         terminal_colors = true,

  --         borderless_telescope = { border = false, style = "flat" },

  --         theme = {
  --           variant = "light",

  --           highlights = {},
  --           -- Override a color entirely
  --           colors = {},
  --         },
  --       })
  --       vim.o.background = "light"
  --       vim.cmd.colorscheme("cyberdream")
  --     else
  --       require("cyberdream").setup({
  --         transparent = false,
  --         italic_comments = true,
  --         -- Replace all fillchars with ' ' for the ultimate clean look
  --         hide_fillchars = true,
  --         -- Modern borderless telescope theme
  --         borderless_telescope = true,
  --         -- Set terminal colors used in `:terminal`
  --         terminal_colors = true,

  --         theme = {
  --           variant = "auto",

  --           highlights = {},

  --           -- Override a color entirely
  --           colors = {},
  --         },
  --       })
  --     end
  --   end,
  -- },

  -- -- NOTE: Tokyonight colorscheme
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     if vim.g.neovide then
  --       require("tokyonight").setup({
  --         transparent = true,
  --         style = "storm",
  --         styles = {
  --           sidebars = "transparent",
  --           floats = "transparent",
  --           statusline = "transparent",
  --         },
  --         on_colors = function(colors)
  --           colors.bg_statusline = colors.none -- To check if its working try something like "#ff00ff" instead of colors.none
  --         end,
  --         on_highlights = function(highlights)
  --           highlights.TreesitterContext = { bg = "NONE" }
  --           highlights.TreesitterContextLineNumber = { bg = "NONE" }
  --           highlights.LineNr4 = { fg = "#3B4261" }
  --           highlights.LineNr3 = { fg = "#4d71a0" }
  --           highlights.LineNr2 = { fg = "#6fc1cf" }
  --           highlights.LineNr1 = { fg = "#aff1ff" }
  --           highlights.LineNr0 = { fg = "#FF9D65", bold = true }
  --         end,
  --       })
  --       -- vim.cmd.colorscheme("tokyonight")
  --     else
  --       require("tokyonight").setup({

  --         style = "moon",
  --         light_style = "day",
  --         day_brightness = 0.1,
  --         terminal_colors = true,
  --         -- NOTE: Transparent background setting
  --         -- transparent = true,
  --         -- styles = {
  --         --   sidebars = "transparent",
  --         --   floats = "transparent",
  --         -- },
  --         sidebars = {
  --           "qf",
  --           "vista_kind",
  --           "terminal",
  --           "spectre_panel",
  --           "startuptime",
  --           "Outline",
  --         },
  --         -- transparent = true,
  --         -- style = "night",
  --         -- styles = {
  --         --   sidebars = "transparent",
  --         --   floats = "transparent",
  --         --   statusline = "transparent",
  --         -- },
  --         on_colors = function(colors)
  --           colors.bg_statusline = colors.none -- To check if its working try something like "#ff00ff" instead of colors.none
  --         end,
  --         -- on_highlights = function(highlights)
  --         --   highlights.TreesitterContext = { bg = "NONE" }
  --         --   highlights.TreesitterContextLineNumber = { bg = "NONE" }
  --         --   highlights.LineNr4 = { fg = "#3B4261" }
  --         --   highlights.LineNr3 = { fg = "#4d71a0" }
  --         --   highlights.LineNr2 = { fg = "#6fc1cf" }
  --         --   highlights.LineNr1 = { fg = "#aff1ff" }
  --         --   highlights.LineNr0 = { fg = "#FF9D65", bold = true }
  --         -- end,

  --         on_highlights = function(hl, c)
  --           hl.CursorLineNr = { fg = c.orange, bold = true }
  --           hl.LineNr = { fg = c.orange, bold = true }
  --           hl.LineNrAbove = { fg = c.fg_gutter }
  --           hl.LineNrBelow = { fg = c.fg_gutter }
  --           local prompt = "#2d3149"
  --           hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
  --           hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
  --           hl.TelescopePromptNormal = { bg = prompt }
  --           hl.TelescopePromptBorder = { bg = prompt, fg = prompt }
  --           hl.TelescopePromptTitle = { bg = c.fg_gutter, fg = c.orange }
  --           hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
  --           hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
  --         end,
  --       })
  --     end
  --     -- vim.cmd.colorscheme('tokyonight') -- setting
  --   end,
  -- },

  -- {
  --   "EdenEast/nightfox.nvim",
  --   opts = {
  --     options = {
  --       module_default = false,
  --       modules = {
  --         aerial = true,
  --         cmp = true,
  --         ["dap-ui"] = true,
  --         dashboard = true,
  --         diagnostic = true,
  --         gitsigns = true,
  --         native_lsp = true,
  --         neotree = true,
  --         notify = true,
  --         symbol_outline = true,
  --         telescope = true,
  --         treesitter = true,
  --         whichkey = true,
  --       },
  --     },
  --     groups = { all = { NormalFloat = { link = "Normal" } } },
  --   },
  -- },
  -- {
  --   "diegoulloao/neofusion.nvim",
  --   priority = 1000,
  --   config = true,
  --   opts = {
  --     terminal_colors = true, -- add neovim terminal colors
  --     undercurl = true,
  --     underline = true,
  --     bold = true,
  --     italic = {
  --       strings = true,
  --       emphasis = true,
  --       comments = true,
  --       operators = false,
  --       folds = true,
  --     },
  --     strikethrough = true,
  --     invert_selection = true,
  --     invert_signs = false,
  --     invert_tabline = false,
  --     invert_intend_guides = false,
  --     inverse = true, -- invert background for search, diffs, statuslines and errors
  --     palette_overrides = {},
  --     overrides = {},
  --     dim_inactive = false,
  --     transparent_mode = false,
  --   },
  -- },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   require("lualine").setup({
  --     options = {
  --       theme = require("neofusion.lualine"),
  --       -- rest,
  --     },
  --   }),
  -- },
  -- {
  --   "oxfist/night-owl.nvim",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     require("night-owl").setup()
  --     vim.cmd.colorscheme("night-owl")
  --   end,
  -- },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   -- lazy = true,
  --   lazy = false,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent = true,
  --       styles = {
  --         sidebars = "transparent",
  --         floats = "transparent",
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   "tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       style = "moon",
  --       light_style = "day",
  --       day_brightness = 0.1,
  --       terminal_colors = true,
  --       -- NOTE: Transparent background setting
  --       -- transparent = true,
  --       -- styles = {
  --       --   sidebars = "transparent",
  --       --   floats = "transparent",
  --       -- },
  --       sidebars = {
  --         "qf",
  --         "vista_kind",
  --         "terminal",
  --         "spectre_panel",
  --         "startuptime",
  --         "Outline",
  --       },
  --       -- on_colors = function(c)
  --       --   -- local hsluv = require("tokyonight.hsluv")
  --       --   -- local function randomColor(color)
  --       --   --   if color ~= "NONE" then
  --       --   --     local hsl = hsluv.hex_to_hsluv(color)
  --       --   --     hsl[1] = math.random(0, 360)
  --       --   --     return hsluv.hsluv_to_hex(hsl)
  --       --   --   end
  --       --   --   return color
  --       --   -- end
  --       --   -- local function set(colors)
  --       --   --   if type(colors) == "table" then
  --       --   --     for k, v in pairs(colors) do
  --       --   --       if type(v) == "string" then
  --       --   --         colors[k] = randomColor(v)
  --       --   --       elseif type(v) == "table" then
  --       --   --         set(v)
  --       --   --       end
  --       --   --     end
  --       --   --   end
  --       --   -- end
  --       --   -- set(c)
  --       -- end,
  --       on_highlights = function(hl, c)
  --         hl.CursorLineNr = { fg = c.orange, bold = true }
  --         hl.LineNr = { fg = c.orange, bold = true }
  --         hl.LineNrAbove = { fg = c.fg_gutter }
  --         hl.LineNrBelow = { fg = c.fg_gutter }
  --         local prompt = "#2d3149"
  --         hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
  --         hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
  --         hl.TelescopePromptNormal = { bg = prompt }
  --         hl.TelescopePromptBorder = { bg = prompt, fg = prompt }
  --         hl.TelescopePromptTitle = { bg = c.fg_gutter, fg = c.orange }
  --         hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
  --         hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
  --       end,
  --     }
  --   end,
  -- },
  -- Configure LazyVim to load colorschemes
  {
    "LazyVim/LazyVim",
    opts = {
      -- dark themes
      -- colorscheme = "tokyonight-storm",
      colorscheme = "tokyonight-moon",
      -- colorscheme = "tokyonight",
      -- colorscheme = "neofusion",
      -- colorscheme = "astrotheme",
      -- colorscheme = "solarized-osaka",
      -- colorscheme = "habamax",

      -- light themes
      -- colorscheme = "kanagawa-lotus",
      -- colorscheme = "dayfox",
    },
  },
}
