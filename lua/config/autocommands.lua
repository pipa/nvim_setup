-- lua/config/autocommands.lua

vim.api.nvim_create_augroup('LspFormatting', {})

vim.api.nvim_create_autocmd('BufWritePre', {
  group = 'LspFormatting',
  pattern = '*',
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

-- Define custom highlight groups
vim.cmd([[
  highlight DashboardHeader guifg=#FFD700 guibg=NONE gui=bold
  highlight DashboardCenter guifg=#00FF00 guibg=NONE
  highlight DashboardFooter guifg=#FFA500 guibg=NONE
]])
