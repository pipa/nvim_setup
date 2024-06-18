-- lua/plugins/treesitter-context.lua

require('treesitter-context').setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  throttle = true, -- Throttles plugin updates (may improve performance)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
    -- For all filetypes
    default = {
      'class',
      'function',
      'method',
    },
  },
  -- [!] The options below are exposed but shouldn't require changing.
  exact_patterns = {
    -- Example for a specific filetype with a list of TS nodes
    -- if not asked for all nodes, can be a string.
    -- example: python = {'def', 'class'}
  },
}

