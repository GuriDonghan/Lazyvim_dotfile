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
vim.keymap.set("n", "<leader>Z", "<cmd>ZenMode<CR>", { desc = "󱅻 Zen Mode" })

-- markdown preview
vim.keymap.set("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Markdown Preview" })

-- vim-ai
vim.keymap.set("n", "<C-space>", "<cmd>AIChat<CR>", { desc = "AI Chat" })
vim.keymap.set("v", "<C-space>", "<cmd>AIChat<CR>", { desc = "AI Chat" })
vim.keymap.set("i", "<C-space>", "<cmd>AIChat<CR>", { desc = "AI Chat" })
vim.keymap.set("n", "<leader>at", "<cmd>AIN tab<CR>", { desc = "AI Chat on a new tab" })

-- teleKasten
-- Launch panel if nothing is typed after <leader>z
vim.keymap.set("n", "<leader>zp", "<cmd>Telekasten panel<CR>", { desc = "Telekasten panel" })

-- Most used functions
vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>", { desc = "Find notes" })
vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>", { desc = "Search notes" })
vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>", { desc = "Goto today" })
vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>", { desc = "Follow link" })
vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>", { desc = "New note" })
vim.keymap.set("n", "<leader>zN", "<cmd>Telekasten new_templated_note<CR>", { desc = "New new_templated_note" })
vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>", { desc = "Show calendar" })
vim.keymap.set("n", "<leader>zt", "<cmd>Telekasten toggle_todo<CR>", { desc = "Toggle_todo" })
vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>", { desc = "Show backlinks" })
vim.keymap.set("n", "<leader>zi", "<cmd>Telekasten paste_img_and_link<CR>", { desc = "Paste image and link" })
vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>", { desc = "Insert image link" })
vim.keymap.set("n", "<leader>z#", "<cmd>Telekasten show_tags<CR>", { desc = "Show tags" })
vim.keymap.set("n", "<leader>zl", "<cmd>Telekasten insert_link<CR>", { desc = "Insert link" })

-- -- Call insert link automatically when we start typing a link
-- vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")

if vim.g.vscode then
  print("⚡connected to neovim!💯‼️🤗😎")
end
