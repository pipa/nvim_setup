-- lua/config/keymaps.lua

local opts = { noremap = true, silent = true }
local map = vim.keymap.set

-- Space as leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Map jk to escape
map('i', 'jk', '<ESC>', opts)

-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Better up/down navigation
map('n', 'j', [[v:count == 0 ? 'gj' : 'j']], { expr = true, silent = true })
map('n', 'k', [[v:count == 0 ? 'gk' : 'k']], { expr = true, silent = true })
map('n', '<Down>', [[v:count == 0 ? 'gj' : 'j']], { expr = true, silent = true })
map('n', '<Up>', [[v:count == 0 ? 'gk' : 'k']], { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map('n', '<C-h>', '<C-w>h', { desc = 'Go to Left Window', noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { desc = 'Go to Lower Window', noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { desc = 'Go to Upper Window', noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { desc = 'Go to Right Window', noremap = true, silent = true })

-- Move lines
map('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down', noremap = true, silent = true })
map('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up', noremap = true, silent = true })
map('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down', noremap = true, silent = true })
map('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up', noremap = true, silent = true })
map('v', '<A-j>', ':m \'>+1<cr>gv=gv', { desc = 'Move Down', noremap = true, silent = true })
map('v', '<A-k>', ':m \'<-2<cr>gv=gv', { desc = 'Move Up', noremap = true, silent = true })

-- Clear search with <esc>
map('n', '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and Clear hlsearch', noremap = true, silent = true })
map('i', '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and Clear hlsearch', noremap = true, silent = true })

-- Better indenting
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Move between buffers
map('n', '<S-h>', ':bprevious<CR>', opts)
map('n', '<S-l>', ':bnext<CR>', opts)

-- Keybinding for nvim-spectre
map('n', '<leader>sr', '<cmd>lua require("spectre").open()<CR>', opts)
map('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', opts)
map('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', opts)
map('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search()<CR>', opts)
