-- lua/plugins/mason.lua

require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = {
    "tsserver",
    "eslint",
    "html",
    "cssls",
    "stylelint_lsp",
    "jsonls",
    "yamlls",
    "dockerls",
    "bashls",
    "lua_ls",
    "perlnavigator",
    "sqls",
    "marksman" -- For Markdown
  }
}

