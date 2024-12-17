return {
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   ft = "markdown",
  --   build = function()
  --     vim.fn["mkdp#util#install"]()
  --   end,
  -- },
  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    keys = {
      {
        "<leader>mp",
        function()
          local peek = require("peek")
          if peek.is_open() then
            peek.close()
          else
            peek.open()
          end
        end,
        desc = "Markdown Preview",
      },
    },
    opts = { theme = "light" },
  },
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown", -- or 'event = "VeryLazy"'
    opts = {
      -- configuration here or empty for defaults
      on_attach = function(bufnr)
        local function toggle(key)
          return "<Esc>gv<Cmd>lua require'markdown.inline'" .. ".toggle_emphasis_visual'" .. key .. "'<CR>"
        end

        vim.keymap.set("x", "<C-b>", toggle("b"), { buffer = bufnr })
        vim.keymap.set("x", "<C-i>", toggle("i"), { buffer = bufnr })
        vim.keymap.set("x", "<C-s>", toggle("s"), { buffer = bufnr })
        vim.keymap.set("x", "<C-c>", toggle("c"), { buffer = bufnr })
      end,
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
      },
      heading = {
        enabled = true,
        icons = { "󰎥 ", "󰎨 ", "󰎫 ", "󰎲 ", "󰎯 ", "󰎴 " },
        sign = true,
        signs = { "󰫎 " },
      },
    },
  },
}
