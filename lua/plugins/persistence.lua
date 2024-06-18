-- lua/plugins/persistence.lua

require('persistence').setup {
  dir = vim.fn.expand(vim.fn.stdpath('data') .. '/sessions/'), -- directory where session files are saved
  options = { 'buffers', 'curdir', 'tabpages', 'winsize' },    -- what to save
}

-- Automatically save session on exit
vim.cmd([[
  autocmd VimLeavePre * lua require('persistence').save()
]])

