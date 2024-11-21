return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- "astro",
        -- "cmake",
        -- "cpp",
        "python",
        "bash",
        "regex",
        "jsonc",
        "css",
        "fish",
        "gitignore",
        -- "go",
        -- "graphql",
        "http",
        -- "java",
        -- "php",
        "rust",
        "scss",
        "sql",
        "svelte",
        "toml",
        "tsx",
        "javascript",
        "typescript",
        "rst",
        "ninja",
        "markdown",
        "markdown_inline",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<C-BS>",
        },
      },
    },
  },
}
