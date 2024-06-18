-- lua/config/options.lua

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.mouse = 'a' -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevelstart = 2 -- Start with everything folded to level 2
vim.opt.foldlevel = 2      -- Set fold level to 2
