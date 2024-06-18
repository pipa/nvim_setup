-- lua/plugins/lazygit.lua

-- Setup for LazyGit (if needed)
-- For now, LazyGit does not require special setup, but you can add future configurations here.

-- Keybinding to launch LazyGit
vim.api.nvim_set_keymap('n', '<leader>gg', '<cmd>LazyGit<CR>', { noremap = true, silent = true })

