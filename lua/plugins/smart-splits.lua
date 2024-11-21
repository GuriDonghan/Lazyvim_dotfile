return {
  "mrjones2014/smart-splits.nvim",
  lazy = false,
  event = function()
    local term = vim.trim((vim.env.TERM_PROGRAM or ""):lower())
    return term == "tmux" or term == "wezterm" or vim.env.KITTY_LISTEN_ON and "VeryLazy" or nil
  end,
  config = function()
    require("smart-splits").setup({
      ignored_filetypes = { "nofile", "quickfix", "qf", "prompt" },
      ignored_buftypes = { "nofile" },
    })

    local opts = { noremap = true, silent = true, desc = "Smart Splits" }
    vim.api.nvim_set_keymap("n", "<C-h>", ":lua require('smart-splits').move_cursor_left()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<C-j>", ":lua require('smart-splits').move_cursor_down()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<C-k>", ":lua require('smart-splits').move_cursor_up()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<C-l>", ":lua require('smart-splits').move_cursor_right()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<C-Up>", ":lua require('smart-splits').resize_up()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<C-Down>", ":lua require('smart-splits').resize_down()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<C-Left>", ":lua require('smart-splits').resize_left()<CR>", opts)
    vim.api.nvim_set_keymap("n", "<C-Right>", ":lua require('smart-splits').resize_right()<CR>", opts)
  end,
}
