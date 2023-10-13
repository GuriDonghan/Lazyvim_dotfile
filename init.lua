if vim.env.VSCODE then
  vim.g.vscode = true
end

-- vim.loader = false
if vim.loader then
  vim.loader.enable()
end

-- VSCode extension bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- treesitter compiler error fix
require("nvim-treesitter.install").compilers = { "gcc-12" }
