-- lua/plugins/lsp.lua

local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

mason.setup()
mason_lspconfig.setup {
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

-- Configure LSP servers
local servers = {
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
  "marksman"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(_, bufnr)
      local opts = { noremap=true, silent=true }
      local buf_set_keymap = vim.api.nvim_buf_set_keymap
      buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
      buf_set_keymap(bufnr, 'n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
      buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    end
  }
end

