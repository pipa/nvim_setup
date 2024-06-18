-- lua/plugins/gitsigns.lua

require('gitsigns').setup {
  signs = {
    add          = { hl = 'GitGutterAdd', text = '│', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
    change       = { hl = 'GitGutterChange', text = '│', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
    delete       = { hl = 'GitGutterDelete', text = '_', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
    topdelete    = { hl = 'GitGutterDeleteChange', text = '‾', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
    changedelete = { hl = 'GitGutterChangeDelete', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
  },
  numhl = false,
  linehl = false,
  -- keymaps = {
  --   -- Default keymap options
  --   noremap = true,
  --
  --   ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'"},
  --   ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'"},
  --
  --   ['n <leader>hs'] = '<cmd>Gitsigns stage_hunk<CR>',
  --   ['v <leader>hs'] = ':Gitsigns stage_hunk<CR>',
  --   ['n <leader>hu'] = '<cmd>Gitsigns undo_stage_hunk<CR>',
  --   ['n <leader>hr'] = '<cmd>Gitsigns reset_hunk<CR>',
  --   ['v <leader>hr'] = ':Gitsigns reset_hunk<CR>',
  --   ['n <leader>hR'] = '<cmd>Gitsigns reset_buffer<CR>',
  --   ['n <leader>hp'] = '<cmd>Gitsigns preview_hunk<CR>',
  --   ['n <leader>hb'] = '<cmd>Gitsigns blame_line<CR>',
  -- },
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
  },
  current_line_blame_formatter_opts = {
    relative_time = false
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil,  -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
}
