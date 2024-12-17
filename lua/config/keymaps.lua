--
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- -- run lua

-- vim.keymap.set("n", "<leader>cR", util.runlua, { desc = "Run Lua" })

-- Zen-mode
-- vim.keymap.set("n", "<leader>Z", "<cmd>ZenMode<CR>", { desc = "󱅻 Zen Mode" })

-- markdown preview
-- vim.keymap.set("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Markdown Preview" })

if vim.g.vscode then
  print("⚡connected to neovim!💯‼️🤗😎")
  -- vscodeMappings()
else
  -- change word with <c-c>
  vim.keymap.set("n", "<C-c>", "<cmd>normal! ciw<cr>a")

  -- Delete Calender Keymaps
  vim.keymap.del("n", "<leader>cal")
  vim.keymap.del("n", "<leader>caL")

  -- NOTE: smart-splits 이용
  -- LazyVim 기본 키맵 비활성화
  vim.keymap.del("n", "<C-h>")
  vim.keymap.del("n", "<C-j>")
  vim.keymap.del("n", "<C-k>")
  vim.keymap.del("n", "<C-l>")

  -- NOTE:수정 필요
  local wk = require("which-key")
  wk.add({

    { "<leader>w", "<cmd>w<cr>", desc = " Save" },
    { "<leader>O", "<cmd>Oil --float<CR>", desc = "Oil file explorer" },
    {
      { "<leader>m", group = "markdown", icon = "" },
      { "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", desc = "Markdown Preview" },
    },
    {
      -- NOTE: telekasten 플러그인 키맵
      { "<leader>z", group = "Telekasten", icon = "" },
      { "<leader>zp", "<cmd>Telekasten panel<CR>", desc = "Panel" },
      { "<leader>zf", "<cmd>Telekasten find_notes<CR>", desc = "Find notes" },
      { "<leader>zn", "<cmd>Telekasten new_note<CR>", desc = "New note" },
      { "<leader>zN", "<cmd>Telekasten new_templated_note<CR>", desc = "New templated note" },
      { "<leader>zd", "<cmd>Telekasten goto_today<CR>", desc = "Goto today" },
      { "<leader>zg", "<cmd>Telekasten search_notes<CR>", desc = "Search notes" },
      { "<leader>zz", "<cmd>Telekasten follow_link<CR>", desc = "Follow link" },
      { "<leader>zc", "<cmd>Telekasten show_calendar<CR>", desc = "Show calendar" },
      { "<leader>zt", "<cmd>Telekasten toggle_todo<CR>", desc = "Toggle_todo" },
      { "<leader>zb", "<cmd>Telekasten show_backlinks<CR>", desc = "Show backlinks" },
      { "<leader>zi", "<cmd>Telekasten paste_img_and_link<CR>", desc = "Paste image and link" },
      { "<leader>zI", "<cmd>Telekasten insert_img_link<CR>", desc = "Insert image link" },
      { "<leader>z#", "<cmd>Telekasten show_tags<CR>", desc = "Show tags" },
      { "<leader>zl", "<cmd>Telekasten insert_link<CR>", desc = "Insert link" },
    },
    {
      mode = "n",
      { "<C-h>", ":lua require('smart-splits').move_cursor_left()<CR>", desc = "Move cursor left" },
      { "<C-j>", ":lua require('smart-splits').move_cursor_down()<CR>", desc = "Move cursor down" },
      { "<C-k>", ":lua require('smart-splits').move_cursor_up()<CR>", desc = "Move cursor up" },
      { "<C-l>", ":lua require('smart-splits').move_cursor_right()<CR>", desc = "Move cursor right" },
      { "<C-Up>", ":lua require('smart-splits').resize_up()<CR>", desc = "Resize up" },
      { "<C-Down>", ":lua require('smart-splits').resize_down()<CR>", desc = "Resize down" },
      { "<C-Left>", ":lua require('smart-splits').resize_left()<CR>", desc = "Resize left" },
      { "<C-Right>", ":lua require('smart-splits').resize_right()<CR>", desc = "Resize right" },
    },
    {
      mode = "i",
    },
  })
end
