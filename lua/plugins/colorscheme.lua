return {
  -- add color schemes
  { "rebelot/kanagawa.nvim" },
  { "luisiacc/gruvbox-baby" },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        module_default = false,
        modules = {
          aerial = true,
          cmp = true,
          ["dap-ui"] = true,
          dashboard = true,
          diagnostic = true,
          gitsigns = true,
          native_lsp = true,
          neotree = true,
          notify = true,
          symbol_outline = true,
          telescope = true,
          treesitter = true,
          whichkey = true,
        },
      },
      groups = { all = { NormalFloat = { link = "Normal" } } },
    },
  },

  -- {
  --   "sainnhe/sonokai",
  --   opts = function()
  --     vim.g.sonokai_style = "andromeda"
  --     vim.g.sonokai_better_performance = 1
  --     local grpid = vim.api.nvim_create_augroup("custom_highlights_sonokai", {})
  --     vim.api.nvim_create_autocmd("ColorScheme", {
  --       group = grpid,
  --       pattern = "sonokai",
  --       callback = function()
  --         local config = vim.fn["sonokai#get_configuration"]()
  --         local palette = vim.fn["sonokai#get_palette"](config.style, config.colors_override)
  --         local set_hl = vim.fn["sonokai#highlight"]
  --
  --         set_hl("Visual", palette.none, palette.grey_dim)
  --         -- set_hl("Visual", palette.none, palette.black)
  --         set_hl("IncSearch", palette.bg0, palette.yellow)
  --         set_hl("Search", palette.none, palette.diff_yellow)
  --       end,
  --     })
  --   end,
  -- },

  {
    "tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        style = "moon",
        -- transparent = true,
        -- styles = {
        --   sidebars = "transparent",
        --   floats = "transparent",
        -- },
        sidebars = {
          "qf",
          "vista_kind",
          "terminal",
          "spectre_panel",
          "startuptime",
          "Outline",
        },
        on_colors = function(c)
          -- local hsluv = require("tokyonight.hsluv")
          -- local function randomColor(color)
          --   if color ~= "NONE" then
          --     local hsl = hsluv.hex_to_hsluv(color)
          --     hsl[1] = math.random(0, 360)
          --     return hsluv.hsluv_to_hex(hsl)
          --   end
          --   return color
          -- end
          -- local function set(colors)
          --   if type(colors) == "table" then
          --     for k, v in pairs(colors) do
          --       if type(v) == "string" then
          --         colors[k] = randomColor(v)
          --       elseif type(v) == "table" then
          --         set(v)
          --       end
          --     end
          --   end
          -- end
          -- set(c)
        end,
        on_highlights = function(hl, c)
          hl.CursorLineNr = { fg = c.orange, bold = true }
          hl.LineNr = { fg = c.orange, bold = true }
          hl.LineNrAbove = { fg = c.fg_gutter }
          hl.LineNrBelow = { fg = c.fg_gutter }
          local prompt = "#2d3149"
          hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
          hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
          hl.TelescopePromptNormal = { bg = prompt }
          hl.TelescopePromptBorder = { bg = prompt, fg = prompt }
          hl.TelescopePromptTitle = { bg = c.fg_gutter, fg = c.orange }
          hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
          hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
        end,
      }
    end,
  },

  {
    "olimorris/onedarkpro.nvim",
    opts = {
      options = {
        highlight_inactive_windows = true,
      },
    },
  },

  -- Configure LazyVim to load colorschemes
  {
    "LazyVim/LazyVim",
    opts = {
      -- dark themes
      -- colorscheme = "tokyonight-storm",
      colorscheme = "tokyonight",
      -- colorscheme = "habamax",
      -- colorscheme = "kanagawa",
      -- colorscheme = "gruvbox-baby",
      -- colorscheme = "nightfox",
      -- colorscheme = "nordfox",
      -- colorscheme = "Terafox",

      -- light themes
      -- colorscheme = "kanagawa-lotus",
      -- colorscheme = "dayfox",
    },
  },
}
