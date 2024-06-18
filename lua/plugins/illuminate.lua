-- lua/plugins/illuminate.lua

require('illuminate').configure({
  providers = {
    'lsp',
    'treesitter',
    'regex',
  },
  delay = 100,
  filetype_overrides = {},
  filetypes_denylist = {
    'dirvish',
    'fugitive',
    'dashboard',
    'NvimTree',
    'packer',
    'neogitstatus',
    'Trouble',
    'lir',
    'Outline',
    'spectre_panel',
    'toggleterm',
  },
  filetypes_allowlist = {},
  modes_denylist = {},
  modes_allowlist = {},
  providers_regex = {},
  under_cursor = true,
})
