return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- disable for cattippicino theme
        additional_vim_regex_highlighting = false,
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
          enable = true,
        },
        -- ensure these language parsers are installed
        ensure_installed = {
          "c",
          "json",
          "javascript",
          "typescript",
          "yaml",
          "http",
          "html",
          "css",
          "markdown",
          "markdown_inline",
          "bash",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "dockerfile",
          "gitignore",
          "rust",
          "sql",
        },
        auto_install = true,
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = false,
          },
        },
      })

      -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
      require("ts_context_commentstring").setup({})
    end,
  },
}
