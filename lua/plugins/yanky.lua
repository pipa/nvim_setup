-- lua/plugins/yanky.lua

require("yanky").setup({
  ring = {
    history_length = 100,
    storage = "shada",
    sync_with_numbered_registers = true,
    cancel_event = "update",
  },
  picker = {
    select = {
      action = nil, -- nil to use default put action
    },
    telescope = {
      mappings = nil, -- nil to use default mappings
    },
  },
  system_clipboard = {
    sync_with_ring = true,
  },
  highlight = {
    on_put = true,
    on_yank = true,
    timer = 500,
  },
})

-- Key mappings for yanky
vim.api.nvim_set_keymap("n", "p", "<Plug>(YankyPutAfter)", {})
vim.api.nvim_set_keymap("n", "P", "<Plug>(YankyPutBefore)", {})
vim.api.nvim_set_keymap("x", "p", "<Plug>(YankyPutAfter)", {})
vim.api.nvim_set_keymap("x", "P", "<Plug>(YankyPutBefore)", {})
vim.api.nvim_set_keymap("n", "gp", "<Plug>(YankyGPutAfter)", {})
vim.api.nvim_set_keymap("n", "gP", "<Plug>(YankyGPutBefore)", {})
vim.api.nvim_set_keymap("x", "gp", "<Plug>(YankyGPutAfter)", {})
vim.api.nvim_set_keymap("x", "gP", "<Plug>(YankyGPutBefore)", {})
vim.api.nvim_set_keymap("n", "<c-n>", "<Plug>(YankyCycleForward)", {})
vim.api.nvim_set_keymap("n", "<c-p>", "<Plug>(YankyCycleBackward)", {})
vim.api.nvim_set_keymap("n", "]p", "<Plug>(YankyPutIndentAfterLinewise)", {})
vim.api.nvim_set_keymap("n", "[p", "<Plug>(YankyPutIndentBeforeLinewise)", {})
vim.api.nvim_set_keymap("n", "]P", "<Plug>(YankyPutIndentAfterLinewise)", {})
vim.api.nvim_set_keymap("n", "[P", "<Plug>(YankyPutIndentBeforeLinewise)", {})
vim.api.nvim_set_keymap("n", ">p", "<Plug>(YankyPutIndentAfterShiftRight)", {})
vim.api.nvim_set_keymap("n", "<p", "<Plug>(YankyPutIndentAfterShiftLeft)", {})
vim.api.nvim_set_keymap("n", ">P", "<Plug>(YankyPutIndentBeforeShiftRight)", {})
vim.api.nvim_set_keymap("n", "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)", {})
vim.api.nvim_set_keymap("n", "=p", "<Plug>(YankyPutAfterFilter)", {})
vim.api.nvim_set_keymap("n", "=P", "<Plug>(YankyPutBeforeFilter)", {})

