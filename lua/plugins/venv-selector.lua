return {
  -- "linux-cultist/venv-selector.nvim",
  -- dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
  -- opts = {
  --   -- Your options go here
  --   -- name = "venv",
  --   -- auto_refresh = false
  --   pyenv_path = "/Users/user/.pyenv/versions",
  -- },
  -- event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  -- -- keys = {
  -- --   -- Keymap to open VenvSelector to pick a venv.
  -- --   { "<leader>vs", "<cmd>VenvSelect<cr>" },
  -- --   -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
  -- --   { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
  -- -- },

  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    config = function()
      require("venv-selector").setup({
        settings = {
          search = {
            -- find_miniforge3_venvs = {
            --   command = "fd /bin/python$ ~/miniforge3/envs --full-path",
            -- },
            -- anaconda_base = {
            --   command = "fd /bin/python$ ~/miniforge3/bin --full-path",
            --   type = "anaconda",
            -- },

            cwd = {
              command = "fd /bin/python$ .venv --full-path --color never -HI -a -L -E /proc -E .git/ -E .wine/ -E .steam/ -E Steam/ -E site-packages/",
            },
            -- find_programming_venvs = {
            --   command = "fd /bin/python$ ~/.pyenv/versions --full-path -IHL -E /proc",
            -- },
          },
        },
      })
    end,
    -- keys = {
    --   -- { ",v", "<cmd>VenvSelect<cr>" },
    -- },
  },
}
