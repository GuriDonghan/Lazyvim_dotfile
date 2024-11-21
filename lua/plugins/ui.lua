return {

  -- modify nvim-cmp style
  -- {
  --   "hrsh7th/nvim-cmp",
  --   event = "InsertEnter",
  --   opts = function(_, opts)
  --     local cmp = require("cmp")

  --     cmp.setup({
  --       window = {
  --         completion = {
  --           border = "rounded", -- single|rounded|none
  --           -- custom colors
  --           -- winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:CursorLineBG,Search:None", -- BorderBG|FloatBorder
  --           side_padding = 0, -- padding at sides
  --           col_offset = -3, -- move floating box left or right
  --         },
  --         documentation = {
  --           border = "rounded", -- single|rounded|none
  --           -- custom colors
  --           -- winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:CursorLineBG,Search:None", -- BorderBG|FloatBorder
  --         },
  --         formatting = {
  --           fields = { "kind", "abbr", "menu" },
  --           format = function(entry, vim_item)
  --             local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
  --             local strings = vim.split(kind.kind, "%s", { trimempty = true })

  --             kind.kind = " " .. (cmp_kinds[strings[2]] or "") .. " "
  --             kind.menu = "    (" .. (strings[2] or "") .. ")"

  --             return kind
  --           end,
  --         },
  --       },
  --     })
  --   end,
  -- },

  -- floating winbar
  -- {
  --   "b0o/incline.nvim",
  --   event = "BufReadPre",
  --   enabled = true,
  --   config = function()
  --     local colors = require("tokyonight.colors").setup()
  --     require("incline").setup({
  --       highlight = {
  --         groups = {
  --           InclineNormal = { guibg = "#FC56B1", guifg = colors.black },
  --           InclineNormalNC = { guifg = "#FC56B1", guibg = colors.black },
  --         },
  --       },
  --       window = { margin = { vertical = 0, horizontal = 1 } },
  --       render = function(props)
  --         local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
  --         local icon, color = require("nvim-web-devicons").get_icon_color(filename)
  --         return { { icon, guifg = color }, { " " }, { filename } }
  --       end,
  --     })
  --   end,
  -- },

  -- style windows with different colorschemes
  -- {
  --   "folke/styler.nvim",
  --   event = "VeryLazy",
  --   enabled = false,
  --   opts = {
  --     themes = {
  --       markdown = { colorscheme = "tokyonight-moon" },
  --       -- markdown = { colorscheme = "tokyonight-night" },
  --       norg = { colorscheme = "tokyonight-storm" },
  --       -- norg = { colorscheme = "kanagawa-lotus" },
  --       help = { colorscheme = "tokyonight-night" },
  --     },
  --   },
  -- },

  --NOTE: LSP HoverDoc make border line
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
  },

  -- -- lualine
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   opts = function(_, opts)
  --     table.insert(opts.sections.lualine_x, {
  --       function()
  --         return require("util.dashboard").status()
  --       end,
  --     })
  --   end,
  -- },
}
