return {
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        ["<leader>a"] = { name = "+ 󰚩 Chat-GPT", mode = { "n", "x" } },
        ["<leader>b"] = { name = "+  Buffer", mode = "n" },
        ["<leader>c"] = { name = "+  Code", mode = { "n", "x" } },
        ["<leader>d"] = { name = "+  Debug", mode = { "n", "x" } },
        ["<leader>f"] = { name = "+ 󰈞 File/Find", mode = "n" },
        ["<leader>g"] = { name = "+  Git", mode = { "n", "x" } },
        ["<leader>m"] = { name = "+  Markdown", mode = "n" },
        ["<leader>s"] = { name = "+  Search", mode = { "n", "x" } },
        ["<leader>u"] = { name = "+ 󰔃 UI", mode = "n" },
        ["<leader>w"] = { name = "+  Window", mode = "n" },
        ["<leader>q"] = { name = "+ 󰩈 Quit/Session", mode = "n" },
        ["<leader>x"] = { name = "+ 󰁨 Diagnostics/QuickFix", mode = { "n", "x" } },
        ["<leader><tab>"] = { name = "+  Tab", mode = "n" },
      },
    },
  },
}
