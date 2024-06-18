-- lua/plugins/treesitter.lua

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "javascript",
    "typescript",
    "lua",
    "html",
    "css",
    "scss",
    "json",
    "yaml",
    "dockerfile",
    "perl",
    "markdown",
    "sql"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
  indent = {
    enable = true,
  },
  folding = {
    enable = true,
  },
}

