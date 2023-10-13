--
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- local util = require("util")

-- util.cowboy()

-- Move to window using the movement keys
vim.keymap.set("n", "<left>", "<C-w>h")
vim.keymap.set("n", "<down>", "<C-w>j")
vim.keymap.set("n", "<up>", "<C-w>k")
vim.keymap.set("n", "<right>", "<C-w>l")

-- -- run lua
-- vim.keymap.set("n", "<leader>cR", util.runlua, { desc = "Run Lua" })

-- Zen-mode
vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "󱅻 Zen Mode" })

-- markdown preview
vim.keymap.set("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Markdown Preview" })

-- vim-ai
vim.keymap.set("n", "<C-space>", "<cmd>AIChat<CR>", { desc = "AI Chat" })
vim.keymap.set("v", "<C-space>", "<cmd>AIChat<CR>", { desc = "AI Chat" })
vim.keymap.set("i", "<C-space>", "<cmd>AIChat<CR>", { desc = "AI Chat" })
vim.keymap.set("n", "<leader>at", "<cmd>AIN tab<CR>", { desc = "AI Chat on a new tab" })

if vim.g.vscode then
  print("⚡connected to neovim!💯‼️🤗😎")
end
